
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; } ;
typedef int pollfd ;


 int cfg_poll_timeout ;
 int errno ;
 int error (int,int ,char*) ;
 int memset (struct pollfd*,int ,int) ;
 int poll (struct pollfd*,int,int ) ;

__attribute__((used)) static void __poll(int fd)
{
 struct pollfd pollfd;
 int ret;

 memset(&pollfd, 0, sizeof(pollfd));
 pollfd.fd = fd;
 ret = poll(&pollfd, 1, cfg_poll_timeout);
 if (ret != 1)
  error(1, errno, "poll");
}
