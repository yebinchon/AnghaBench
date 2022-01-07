
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int pg_time_t ;


 int MyLatch ;
 int PGARCH_AUTOWAKE_INTERVAL ;
 int PGC_SIGHUP ;
 int ProcessConfigFile (int ) ;
 int ResetLatch (int ) ;
 int WAIT_EVENT_ARCHIVER_MAIN ;
 int WL_LATCH_SET ;
 int WL_POSTMASTER_DEATH ;
 int WL_TIMEOUT ;
 int WaitLatch (int ,int,int,int ) ;
 int got_SIGHUP ;
 scalar_t__ got_SIGTERM ;
 scalar_t__ last_sigterm_time ;
 int pgarch_ArchiverCopyLoop () ;
 int ready_to_stop ;
 void* time (int *) ;
 int wakened ;

__attribute__((used)) static void
pgarch_MainLoop(void)
{
 pg_time_t last_copy_time = 0;
 bool time_to_stop;







 wakened = 1;






 do
 {
  ResetLatch(MyLatch);


  time_to_stop = ready_to_stop;


  if (got_SIGHUP)
  {
   got_SIGHUP = 0;
   ProcessConfigFile(PGC_SIGHUP);
  }
  if (got_SIGTERM)
  {
   time_t curtime = time(((void*)0));

   if (last_sigterm_time == 0)
    last_sigterm_time = curtime;
   else if ((unsigned int) (curtime - last_sigterm_time) >=
      (unsigned int) 60)
    break;
  }


  if (wakened || time_to_stop)
  {
   wakened = 0;
   pgarch_ArchiverCopyLoop();
   last_copy_time = time(((void*)0));
  }






  if (!time_to_stop)
  {
   pg_time_t curtime = (pg_time_t) time(((void*)0));
   int timeout;

   timeout = PGARCH_AUTOWAKE_INTERVAL - (curtime - last_copy_time);
   if (timeout > 0)
   {
    int rc;

    rc = WaitLatch(MyLatch,
          WL_LATCH_SET | WL_TIMEOUT | WL_POSTMASTER_DEATH,
          timeout * 1000L,
          WAIT_EVENT_ARCHIVER_MAIN);
    if (rc & WL_TIMEOUT)
     wakened = 1;
    if (rc & WL_POSTMASTER_DEATH)
     time_to_stop = 1;
   }
   else
    wakened = 1;
  }






 } while (!time_to_stop);
}
