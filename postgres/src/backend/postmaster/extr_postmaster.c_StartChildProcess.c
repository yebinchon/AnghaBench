
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int typebuf ;
typedef scalar_t__ pid_t ;
typedef int AuxProcType ;


 int Assert (int) ;
 int AuxiliaryProcessMain (int,char**) ;


 int ClosePostmasterPorts (int) ;
 int ExitPostmaster (int) ;
 int InitPostmasterChild () ;
 int LOG ;
 int MemoryContextDelete (int *) ;
 int MemoryContextSwitchTo (int ) ;
 int * PostmasterContext ;

 int TopMemoryContext ;


 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int errno ;
 scalar_t__ fork_process () ;
 int lengthof (char**) ;
 scalar_t__ postmaster_forkexec (int,char**) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static pid_t
StartChildProcess(AuxProcType type)
{
 pid_t pid;
 char *av[10];
 int ac = 0;
 char typebuf[32];




 av[ac++] = "postgres";






 snprintf(typebuf, sizeof(typebuf), "-x%d", type);
 av[ac++] = typebuf;

 av[ac] = ((void*)0);
 Assert(ac < lengthof(av));




 pid = fork_process();

 if (pid == 0)
 {
  InitPostmasterChild();


  ClosePostmasterPorts(0);


  MemoryContextSwitchTo(TopMemoryContext);
  MemoryContextDelete(PostmasterContext);
  PostmasterContext = ((void*)0);

  AuxiliaryProcessMain(ac, av);
  ExitPostmaster(0);
 }


 if (pid < 0)
 {

  int save_errno = errno;

  errno = save_errno;
  switch (type)
  {
   case 130:
    ereport(LOG,
      (errmsg("could not fork startup process: %m")));
    break;
   case 132:
    ereport(LOG,
      (errmsg("could not fork background writer process: %m")));
    break;
   case 131:
    ereport(LOG,
      (errmsg("could not fork checkpointer process: %m")));
    break;
   case 128:
    ereport(LOG,
      (errmsg("could not fork WAL writer process: %m")));
    break;
   case 129:
    ereport(LOG,
      (errmsg("could not fork WAL receiver process: %m")));
    break;
   default:
    ereport(LOG,
      (errmsg("could not fork process: %m")));
    break;
  }





  if (type == 130)
   ExitPostmaster(1);
  return 0;
 }




 return pid;
}
