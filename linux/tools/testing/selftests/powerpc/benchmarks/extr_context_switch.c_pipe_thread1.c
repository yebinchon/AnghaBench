
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t READ ;
 int SIGALRM ;
 size_t WRITE ;
 int alarm (int) ;
 int assert (int) ;
 int c ;
 int iterations ;
 int * pipe_fd1 ;
 int * pipe_fd2 ;
 int read (int ,int *,int) ;
 int sigalrm_handler ;
 int signal (int ,int ) ;
 int touch () ;
 int write (int ,int *,int) ;

__attribute__((used)) static void *pipe_thread1(void *arg)
{
 signal(SIGALRM, sigalrm_handler);
 alarm(1);

 while (1) {
  assert(read(pipe_fd1[READ], &c, 1) == 1);
  touch();

  assert(write(pipe_fd2[WRITE], &c, 1) == 1);
  touch();

  iterations += 2;
 }

 return ((void*)0);
}
