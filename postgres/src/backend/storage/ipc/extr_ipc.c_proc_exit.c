
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG3 ;
 scalar_t__ IsAutoVacuumWorkerProcess () ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int chdir (char*) ;
 int elog (int ,char*,int) ;
 int exit (int) ;
 scalar_t__ getpid () ;
 int mkdir (char*,int) ;
 int proc_exit_prepare (int) ;
 int snprintf (char*,int,char*,...) ;

void
proc_exit(int code)
{

 proc_exit_prepare(code);
 elog(DEBUG3, "exit(%d)", code);

 exit(code);
}
