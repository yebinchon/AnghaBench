
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint64 ;
struct dirent {int d_name; } ;
typedef unsigned int XLogSegNo ;
struct TYPE_3__ {unsigned int redo; } ;
struct TYPE_4__ {unsigned int xlog_seg_size; TYPE_1__ checkPointCopy; } ;
typedef int DIR ;


 TYPE_2__ ControlFile ;
 scalar_t__ IsPartialXLogFileName (int ) ;
 scalar_t__ IsXLogFileName (int ) ;
 unsigned int UINT64CONST (int) ;
 unsigned int WalSegSz ;
 int XLOGDIR ;
 scalar_t__ closedir (int *) ;
 int errno ;
 int exit (int) ;
 unsigned int newXlogSegNo ;
 int * opendir (int ) ;
 int pg_log_error (char*,int ) ;
 struct dirent* readdir (int *) ;
 int sscanf (int ,char*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void
FindEndOfXLOG(void)
{
 DIR *xldir;
 struct dirent *xlde;
 uint64 segs_per_xlogid;
 uint64 xlogbytepos;






 segs_per_xlogid = (UINT64CONST(0x0000000100000000) / ControlFile.xlog_seg_size);
 newXlogSegNo = ControlFile.checkPointCopy.redo / ControlFile.xlog_seg_size;






 xldir = opendir(XLOGDIR);
 if (xldir == ((void*)0))
 {
  pg_log_error("could not open directory \"%s\": %m", XLOGDIR);
  exit(1);
 }

 while (errno = 0, (xlde = readdir(xldir)) != ((void*)0))
 {
  if (IsXLogFileName(xlde->d_name) ||
   IsPartialXLogFileName(xlde->d_name))
  {
   unsigned int tli,
      log,
      seg;
   XLogSegNo segno;






   sscanf(xlde->d_name, "%08X%08X%08X", &tli, &log, &seg);
   segno = ((uint64) log) * segs_per_xlogid + seg;







   if (segno > newXlogSegNo)
    newXlogSegNo = segno;
  }
 }

 if (errno)
 {
  pg_log_error("could not read directory \"%s\": %m", XLOGDIR);
  exit(1);
 }

 if (closedir(xldir))
 {
  pg_log_error("could not close directory \"%s\": %m", XLOGDIR);
  exit(1);
 }





 xlogbytepos = newXlogSegNo * ControlFile.xlog_seg_size;
 newXlogSegNo = (xlogbytepos + ControlFile.xlog_seg_size - 1) / WalSegSz;
 newXlogSegNo++;
}
