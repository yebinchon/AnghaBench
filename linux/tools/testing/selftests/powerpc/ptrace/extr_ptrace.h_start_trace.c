
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int PTRACE_ATTACH ;
 int TEST_FAIL ;
 int TEST_PASS ;
 int perror (char*) ;
 int ptrace (int ,int,int *,int *) ;
 int waitpid (int,int *,int ) ;

int start_trace(pid_t child)
{
 int ret;

 ret = ptrace(PTRACE_ATTACH, child, ((void*)0), ((void*)0));
 if (ret) {
  perror("ptrace(PTRACE_ATTACH) failed");
  return TEST_FAIL;
 }
 ret = waitpid(child, ((void*)0), 0);
 if (ret != child) {
  perror("waitpid() failed");
  return TEST_FAIL;
 }
 return TEST_PASS;
}
