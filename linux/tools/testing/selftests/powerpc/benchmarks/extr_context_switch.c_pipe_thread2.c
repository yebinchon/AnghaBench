
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t READ ;
 size_t WRITE ;
 int assert (int) ;
 int c ;
 int * pipe_fd1 ;
 int * pipe_fd2 ;
 int read (int ,int *,int) ;
 int touch () ;
 int write (int ,int *,int) ;

__attribute__((used)) static void *pipe_thread2(void *arg)
{
 while (1) {
  assert(write(pipe_fd1[WRITE], &c, 1) == 1);
  touch();

  assert(read(pipe_fd2[READ], &c, 1) == 1);
  touch();
 }

 return ((void*)0);
}
