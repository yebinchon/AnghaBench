
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 scalar_t__ IsBackupHistoryFileName (int ) ;
 scalar_t__ IsPartialXLogFileName (int ) ;
 scalar_t__ IsXLogFileName (int ) ;
 int TrimExtension (int ,int ) ;
 int XLogFileNameById (int ,int,int,int) ;
 char* _ (char*) ;
 int additional_ext ;
 int exclusiveCleanupFileName ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int pg_log_error (char*) ;
 char* progname ;
 int restartWALFileName ;
 int sscanf (int ,char*,int*,int*,int*,...) ;
 int stderr ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void
SetWALFileNameForCleanup(void)
{
 bool fnameOK = 0;

 TrimExtension(restartWALFileName, additional_ext);
 if (IsXLogFileName(restartWALFileName))
 {
  strcpy(exclusiveCleanupFileName, restartWALFileName);
  fnameOK = 1;
 }
 else if (IsPartialXLogFileName(restartWALFileName))
 {
  int args;
  uint32 tli = 1,
     log = 0,
     seg = 0;

  args = sscanf(restartWALFileName, "%08X%08X%08X.partial",
       &tli, &log, &seg);
  if (args == 3)
  {
   fnameOK = 1;





   XLogFileNameById(exclusiveCleanupFileName, tli, log, seg);
  }
 }
 else if (IsBackupHistoryFileName(restartWALFileName))
 {
  int args;
  uint32 tli = 1,
     log = 0,
     seg = 0,
     offset = 0;

  args = sscanf(restartWALFileName, "%08X%08X%08X.%08X.backup", &tli, &log, &seg, &offset);
  if (args == 4)
  {
   fnameOK = 1;





   XLogFileNameById(exclusiveCleanupFileName, tli, log, seg);
  }
 }

 if (!fnameOK)
 {
  pg_log_error("invalid file name argument");
  fprintf(stderr, _("Try \"%s --help\" for more information.\n"), progname);
  exit(2);
 }
}
