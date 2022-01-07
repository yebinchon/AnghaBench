
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int time_t ;
struct tm {int dummy; } ;
typedef int strfbuf ;
typedef int buf ;
typedef int XLogSegNo ;
typedef int XLogRecPtr ;
typedef int TimeLineID ;


 int MAXFNAMELEN ;
 int WalSegSz ;
 int XLByteToSeg (int,int ,int ) ;
 int XLogFileName (char*,int ,int ,int ) ;
 int close_target_file () ;
 struct tm* localtime (int *) ;
 int open_target_file (char*,int) ;
 int pg_fatal (char*) ;
 int snprintf (char*,int,char*,int,int,char*,int,int,char*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;
 int write_target_range (char*,int ,int) ;

__attribute__((used)) static void
createBackupLabel(XLogRecPtr startpoint, TimeLineID starttli, XLogRecPtr checkpointloc)
{
 XLogSegNo startsegno;
 time_t stamp_time;
 char strfbuf[128];
 char xlogfilename[MAXFNAMELEN];
 struct tm *tmp;
 char buf[1000];
 int len;

 XLByteToSeg(startpoint, startsegno, WalSegSz);
 XLogFileName(xlogfilename, starttli, startsegno, WalSegSz);




 stamp_time = time(((void*)0));
 tmp = localtime(&stamp_time);
 strftime(strfbuf, sizeof(strfbuf), "%Y-%m-%d %H:%M:%S %Z", tmp);

 len = snprintf(buf, sizeof(buf),
       "START WAL LOCATION: %X/%X (file %s)\n"
       "CHECKPOINT LOCATION: %X/%X\n"
       "BACKUP METHOD: pg_rewind\n"
       "BACKUP FROM: standby\n"
       "START TIME: %s\n",

       (uint32) (startpoint >> 32), (uint32) startpoint, xlogfilename,
       (uint32) (checkpointloc >> 32), (uint32) checkpointloc,
       strfbuf);
 if (len >= sizeof(buf))
  pg_fatal("backup label buffer too small");


 open_target_file("backup_label", 1);
 write_target_range(buf, 0, len);
 close_target_file();
}
