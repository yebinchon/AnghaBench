
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {scalar_t__ revents; int fd; scalar_t__ events; } ;


 scalar_t__ POLLIN ;
 int errno ;
 int error (int,int ,char*,...) ;
 int interrupted ;
 int poll (struct pollfd*,int,int) ;

__attribute__((used)) static void do_poll(int fd, int timeout_ms)
{
 struct pollfd pfd;
 int ret;

 pfd.events = POLLIN;
 pfd.revents = 0;
 pfd.fd = fd;

 do {
  ret = poll(&pfd, 1, 10);
  if (interrupted)
   break;
  if (ret == -1)
   error(1, errno, "poll");
  if (ret == 0) {
   if (!timeout_ms)
    continue;

   timeout_ms -= 10;
   if (timeout_ms <= 0) {
    interrupted = 1;
    break;
   }
  }
  if (pfd.revents != POLLIN)
   error(1, errno, "poll: 0x%x expected 0x%x\n",
     pfd.revents, POLLIN);
 } while (!ret);
}
