
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_size; } ;


 scalar_t__ IsXLogFileName (int ) ;
 scalar_t__ SetWALFileNameForCleanup () ;
 scalar_t__ SetWALSegSize () ;
 int WALFilePath ;
 int WalSegSz ;
 int XLOG_DATA ;
 char* _ (char*) ;
 scalar_t__ debug ;
 char* exclusiveCleanupFileName ;
 int exit (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ need_cleanup ;
 int nextWALFileName ;
 int nextWALFileType ;
 int pg_usleep (long) ;
 long sleeptime ;
 scalar_t__ stat (int ,TYPE_1__*) ;
 TYPE_1__ stat_buf ;
 int stderr ;

__attribute__((used)) static bool
CustomizableNextWALFileReady(void)
{
 if (stat(WALFilePath, &stat_buf) == 0)
 {





  if (WalSegSz == -1 && IsXLogFileName(nextWALFileName))
  {
   if (SetWALSegSize())
   {




    need_cleanup = SetWALFileNameForCleanup();
    if (debug)
    {
     fprintf(stderr,
       _("WAL segment size:     %d \n"), WalSegSz);
     fprintf(stderr, "Keep archive history: ");

     if (need_cleanup)
      fprintf(stderr, "%s and later\n",
        exclusiveCleanupFileName);
     else
      fprintf(stderr, "no cleanup required\n");
    }
   }
  }




  if (WalSegSz > 0 && stat_buf.st_size == WalSegSz)
  {
   nextWALFileType = XLOG_DATA;
   return 1;
  }




  if (WalSegSz > 0 && stat_buf.st_size > WalSegSz)
  {
   if (debug)
   {
    fprintf(stderr, "file size greater than expected\n");
    fflush(stderr);
   }
   exit(3);
  }
 }

 return 0;
}
