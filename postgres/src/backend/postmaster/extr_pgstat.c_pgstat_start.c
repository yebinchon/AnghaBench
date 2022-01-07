
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef scalar_t__ pid_t ;


 int ClosePostmasterPorts (int) ;
 int InitPostmasterChild () ;
 int LOG ;
 scalar_t__ PGINVALID_SOCKET ;
 scalar_t__ PGSTAT_RESTART_INTERVAL ;
 int PGSharedMemoryDetach () ;
 int PgstatCollectorMain (int ,int *) ;
 int dsm_detach_all () ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 scalar_t__ fork_process () ;
 scalar_t__ last_pgstat_start_time ;
 scalar_t__ pgStatSock ;
 scalar_t__ pgstat_forkexec () ;
 scalar_t__ time (int *) ;

int
pgstat_start(void)
{
 time_t curtime;
 pid_t pgStatPid;





 if (pgStatSock == PGINVALID_SOCKET)
  return 0;







 curtime = time(((void*)0));
 if ((unsigned int) (curtime - last_pgstat_start_time) <
  (unsigned int) PGSTAT_RESTART_INTERVAL)
  return 0;
 last_pgstat_start_time = curtime;







 switch ((pgStatPid = fork_process()))

 {
  case -1:
   ereport(LOG,
     (errmsg("could not fork statistics collector: %m")));
   return 0;


  case 0:

   InitPostmasterChild();


   ClosePostmasterPorts(0);


   dsm_detach_all();
   PGSharedMemoryDetach();

   PgstatCollectorMain(0, ((void*)0));
   break;


  default:
   return (int) pgStatPid;
 }


 return 0;
}
