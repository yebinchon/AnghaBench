
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IsUnderPostmaster ;
 int PGC_SIGHUP ;
 int PostmasterIsAlive () ;
 int ProcessConfigFile (int ) ;
 int exit (int) ;
 int got_SIGHUP ;
 int proc_exit (int) ;
 scalar_t__ shutdown_requested ;

void
HandleStartupProcInterrupts(void)
{



 if (got_SIGHUP)
 {
  got_SIGHUP = 0;
  ProcessConfigFile(PGC_SIGHUP);
 }




 if (shutdown_requested)
  proc_exit(1);





 if (IsUnderPostmaster && !PostmasterIsAlive())
  exit(1);
}
