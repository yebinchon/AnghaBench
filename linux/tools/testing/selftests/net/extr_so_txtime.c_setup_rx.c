
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int tv_usec; } ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;


 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 scalar_t__ bind (int,struct sockaddr*,int ) ;
 int errno ;
 int error (int,int ,char*) ;
 scalar_t__ setsockopt (int,int ,int ,struct timeval*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int setup_rx(struct sockaddr *addr, socklen_t alen)
{
 struct timeval tv = { .tv_usec = 100 * 1000 };
 int fd;

 fd = socket(addr->sa_family, SOCK_DGRAM, 0);
 if (fd == -1)
  error(1, errno, "socket r");

 if (bind(fd, addr, alen))
  error(1, errno, "bind");

 if (setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)))
  error(1, errno, "setsockopt rcv timeout");

 return fd;
}
