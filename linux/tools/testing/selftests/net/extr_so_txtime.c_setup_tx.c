
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;
typedef int socklen_t ;


 int SOCK_DGRAM ;
 scalar_t__ connect (int,struct sockaddr*,int ) ;
 int errno ;
 int error (int,int ,char*) ;
 int setsockopt_txtime (int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int setup_tx(struct sockaddr *addr, socklen_t alen)
{
 int fd;

 fd = socket(addr->sa_family, SOCK_DGRAM, 0);
 if (fd == -1)
  error(1, errno, "socket t");

 if (connect(fd, addr, alen))
  error(1, errno, "connect");

 setsockopt_txtime(fd);

 return fd;
}
