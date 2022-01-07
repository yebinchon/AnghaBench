
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogSegNo ;
typedef int TimeLineID ;


 int MAXFNAMELEN ;
 int XLogFileName (char*,int ,int ,int ) ;
 char* palloc (int ) ;
 int wal_segment_size ;

char *
XLogFileNameP(TimeLineID tli, XLogSegNo segno)
{
 char *result = palloc(MAXFNAMELEN);

 XLogFileName(result, tli, segno, wal_segment_size);
 return result;
}
