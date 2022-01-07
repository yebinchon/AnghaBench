
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_LOCAL ;
 int SOCK_STREAM ;
 int br_socket_fd ;
 int errno ;
 int socket (int ,int ,int ) ;

int br_init(void)
{
 if ((br_socket_fd = socket(AF_LOCAL, SOCK_STREAM, 0)) < 0)
  return errno;
 return 0;
}
