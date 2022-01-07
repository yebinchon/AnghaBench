
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 scalar_t__ pipe (int ) ;
 int pipe_fd1 ;
 int pipe_fd2 ;

__attribute__((used)) static void pipe_setup(int cpu1, int cpu2)
{
 if (pipe(pipe_fd1) || pipe(pipe_fd2))
  exit(1);
}
