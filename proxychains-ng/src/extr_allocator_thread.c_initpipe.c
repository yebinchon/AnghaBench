
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int O_CLOEXEC ;
 int exit (int) ;
 int fcntl (int,int ,int ) ;
 int perror (char*) ;
 int pipe (int*) ;
 int pipe2 (int*,int ) ;

__attribute__((used)) static void initpipe(int* fds) {
 int retval;




 retval = pipe(fds);
 if(retval == 0) {
  fcntl(fds[0], F_SETFD, FD_CLOEXEC);
  fcntl(fds[1], F_SETFD, FD_CLOEXEC);
 }

 if(retval == -1) {
  perror("pipe");
  exit(1);
 }
}
