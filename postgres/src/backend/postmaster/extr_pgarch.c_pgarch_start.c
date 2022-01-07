
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef scalar_t__ pid_t ;


 int ClosePostmasterPorts (int) ;
 int InitPostmasterChild () ;
 int LOG ;
 scalar_t__ PGARCH_RESTART_INTERVAL ;
 int PGSharedMemoryDetach () ;
 int PgArchiverMain (int ,int *) ;
 int XLogArchivingActive () ;
 int dsm_detach_all () ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 scalar_t__ fork_process () ;
 scalar_t__ last_pgarch_start_time ;
 scalar_t__ pgarch_forkexec () ;
 scalar_t__ time (int *) ;

int
pgarch_start(void)
{
 time_t curtime;
 pid_t pgArchPid;




 if (!XLogArchivingActive())
  return 0;







 curtime = time(((void*)0));
 if ((unsigned int) (curtime - last_pgarch_start_time) <
  (unsigned int) PGARCH_RESTART_INTERVAL)
  return 0;
 last_pgarch_start_time = curtime;




 switch ((pgArchPid = fork_process()))

 {
  case -1:
   ereport(LOG,
     (errmsg("could not fork archiver: %m")));
   return 0;


  case 0:

   InitPostmasterChild();


   ClosePostmasterPorts(0);


   dsm_detach_all();
   PGSharedMemoryDetach();

   PgArchiverMain(0, ((void*)0));
   break;


  default:
   return (int) pgArchPid;
 }


 return 0;
}
