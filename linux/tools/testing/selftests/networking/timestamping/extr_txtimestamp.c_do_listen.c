
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,void*,int) ;
 int cfg_proto ;
 int errno ;
 int error (int,int ,char*) ;
 scalar_t__ listen (int,int) ;
 int socket (int,int,int ) ;

__attribute__((used)) static void do_listen(int family, void *addr, int alen)
{
 int fd, type;

 type = cfg_proto == SOCK_RAW ? SOCK_DGRAM : cfg_proto;

 fd = socket(family, type, 0);
 if (fd == -1)
  error(1, errno, "socket rx");

 if (bind(fd, addr, alen))
  error(1, errno, "bind rx");

 if (type == SOCK_STREAM && listen(fd, 10))
  error(1, errno, "listen rx");




}
