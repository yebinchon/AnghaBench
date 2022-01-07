
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int member_0; } ;


 scalar_t__ cfg_verbose ;
 int errno ;
 int error (int,int ,char*) ;
 int flush_errqueue_recv (int) ;
 int fprintf (int ,char*) ;
 int poll (struct pollfd*,int,int) ;
 int stderr ;

__attribute__((used)) static void flush_errqueue(int fd, const bool do_poll)
{
 if (do_poll) {
  struct pollfd fds = {0};
  int ret;

  fds.fd = fd;
  ret = poll(&fds, 1, 500);
  if (ret == 0) {
   if (cfg_verbose)
    fprintf(stderr, "poll timeout\n");
  } else if (ret < 0) {
   error(1, errno, "poll");
  }
 }

 flush_errqueue_recv(fd);
}
