
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPC_PTRACE_GETHWDBGINFO ;
 int child_pid ;
 int dbginfo ;
 int exit (int) ;
 int perror (char*) ;
 int ptrace (int ,int ,int *,int *) ;

__attribute__((used)) static void get_dbginfo(void)
{
 int ret;

 ret = ptrace(PPC_PTRACE_GETHWDBGINFO, child_pid, ((void*)0), &dbginfo);
 if (ret) {
  perror("Can't get breakpoint info\n");
  exit(-1);
 }
}
