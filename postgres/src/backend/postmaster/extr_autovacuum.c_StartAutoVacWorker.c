
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int AutoVacWorkerMain (int ,int *) ;
 int ClosePostmasterPorts (int) ;
 int InitPostmasterChild () ;
 int LOG ;
 scalar_t__ avworker_forkexec () ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 scalar_t__ fork_process () ;

int
StartAutoVacWorker(void)
{
 pid_t worker_pid;




 switch ((worker_pid = fork_process()))

 {
  case -1:
   ereport(LOG,
     (errmsg("could not fork autovacuum worker process: %m")));
   return 0;


  case 0:

   InitPostmasterChild();


   ClosePostmasterPorts(0);

   AutoVacWorkerMain(0, ((void*)0));
   break;

  default:
   return (int) worker_pid;
 }


 return 0;
}
