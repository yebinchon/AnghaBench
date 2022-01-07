
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int PTRACE_CONT ;
 int TEST_FAIL ;
 int TEST_PASS ;
 int perror (char*) ;
 int ptrace (int ,int ,int *,int *) ;

int cont_trace(pid_t child)
{
 int ret;

 ret = ptrace(PTRACE_CONT, child, ((void*)0), ((void*)0));
 if (ret) {
  perror("ptrace(PTRACE_CONT) failed");
  return TEST_FAIL;
 }
 return TEST_PASS;
}
