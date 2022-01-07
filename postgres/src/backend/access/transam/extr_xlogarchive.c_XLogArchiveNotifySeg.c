
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogSegNo ;


 int MAXFNAMELEN ;
 int ThisTimeLineID ;
 int XLogArchiveNotify (char*) ;
 int XLogFileName (char*,int ,int ,int ) ;
 int wal_segment_size ;

void
XLogArchiveNotifySeg(XLogSegNo segno)
{
 char xlog[MAXFNAMELEN];

 XLogFileName(xlog, ThisTimeLineID, segno, wal_segment_size);
 XLogArchiveNotify(xlog);
}
