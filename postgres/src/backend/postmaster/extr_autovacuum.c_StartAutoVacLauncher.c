
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int AutoVacLauncherMain (int ,int *) ;
 int ClosePostmasterPorts (int) ;
 int InitPostmasterChild () ;
 int LOG ;
 scalar_t__ avlauncher_forkexec () ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 scalar_t__ fork_process () ;

int
StartAutoVacLauncher(void)
{
 pid_t AutoVacPID;




 switch ((AutoVacPID = fork_process()))

 {
  case -1:
   ereport(LOG,
     (errmsg("could not fork autovacuum launcher process: %m")));
   return 0;


  case 0:

   InitPostmasterChild();


   ClosePostmasterPorts(0);

   AutoVacLauncherMain(0, ((void*)0));
   break;

  default:
   return (int) AutoVacPID;
 }


 return 0;
}
