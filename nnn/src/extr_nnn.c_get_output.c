
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int FILE ;


 int F_CLI ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _exit (int) ;
 int close (int) ;
 int dup2 (int,int ) ;
 int errexit () ;
 int execlp (char const*,char const*,char const*,char const*,int *) ;
 int fcntl (int,int ,int) ;
 int * fdopen (int,char*) ;
 char* fgets (char*,size_t const,int *) ;
 scalar_t__ fork () ;
 int pager ;
 int pipe (int*) ;
 int spawn (int ,int *,int *,int *,int ) ;
 int waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static char *get_output(char *buf, const size_t bytes, const char *file,
   const char *arg1, const char *arg2, const bool page)
{
 pid_t pid;
 int pipefd[2];
 FILE *pf;
 int tmp, flags;
 char *ret = ((void*)0);

 if (pipe(pipefd) == -1)
  errexit();

 for (tmp = 0; tmp < 2; ++tmp) {

  flags = fcntl(pipefd[tmp], F_GETFL, 0);


  flags |= O_NONBLOCK;


  fcntl(pipefd[tmp], F_SETFL, flags);
 }

 pid = fork();
 if (pid == 0) {

  close(pipefd[0]);
  dup2(pipefd[1], STDOUT_FILENO);
  dup2(pipefd[1], STDERR_FILENO);
  close(pipefd[1]);
  execlp(file, file, arg1, arg2, ((void*)0));
  _exit(1);
 }


 waitpid(pid, &tmp, 0);
 close(pipefd[1]);

 if (!page) {
  pf = fdopen(pipefd[0], "r");
  if (pf) {
   ret = fgets(buf, bytes, pf);
   close(pipefd[0]);
  }

  return ret;
 }


 pid = fork();
 if (pid == 0) {

  dup2(pipefd[0], STDIN_FILENO);
  close(pipefd[0]);
  spawn(pager, ((void*)0), ((void*)0), ((void*)0), F_CLI);
  _exit(1);
 }


 waitpid(pid, &tmp, 0);
 close(pipefd[0]);

 return ((void*)0);
}
