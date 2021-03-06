-- MySQL dump 10.13  Distrib 5.7.23, for macos10.13 (x86_64)
--
-- Host: localhost    Database: twitterdb
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `twitterdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `twitterdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `twitterdb`;

--
-- Table structure for table `mention`
--

DROP TABLE IF EXISTS `mention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mention` (
  `mentionID` int(11) NOT NULL AUTO_INCREMENT,
  `tweetID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`mentionID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tweet`
--

DROP TABLE IF EXISTS `tweet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tweet` (
  `tweetID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `twit` varchar(280) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`tweetID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `emailAddress` varchar(45) NOT NULL,
  `birthdate` varchar(45) NOT NULL,
  `password` varchar(64) NOT NULL,
  `questionNo` int(11) NOT NULL,
  `answer` varchar(45) NOT NULL,
  `profileURL` varchar(500) DEFAULT 'https://res.cloudinary.com/minitwitter/image/upload/v1541485112/profile/default_profile.png',
  `coverURL` varchar(500) DEFAULT 'https://res.cloudinary.com/minitwitter/image/upload/v1541485580/cover/default_cover.jpg',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `view_tweet`
--

DROP TABLE IF EXISTS `view_tweet`;
/*!50001 DROP VIEW IF EXISTS `view_tweet`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_tweet` AS SELECT 
 1 AS `tweetID`,
 1 AS `tweetUserID`,
 1 AS `tweetMentionID`,
 1 AS `twit`,
 1 AS `time`,
 1 AS `username`,
 1 AS `fullname`*/;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `twitterdb`
--

USE `twitterdb`;

--
-- Final view structure for view `view_tweet`
--

/*!50001 DROP VIEW IF EXISTS `view_tweet`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_tweet` AS select `tweet`.`tweetID` AS `tweetID`,`tweet`.`userID` AS `tweetUserID`,`mention`.`userID` AS `tweetMentionID`,`tweet`.`twit` AS `twit`,`tweet`.`time` AS `time`,`user`.`username` AS `username`,`user`.`fullname` AS `fullname` from ((`tweet` join `user` on((`tweet`.`userID` = `user`.`userID`))) left join `mention` on((`tweet`.`tweetID` = `mention`.`tweetID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-06 11:50:21
