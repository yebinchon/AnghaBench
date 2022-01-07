
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execve (char*,char* const*,int *) ;
 int exit (int) ;
 int perror (char*) ;

__attribute__((used)) static void run_exec(void)
{
 char *const argv[] = { "./exec_target", ((void*)0) };

 if (execve("./exec_target", argv, ((void*)0)) == -1) {
  perror("execve");
  exit(1);
 }
}
