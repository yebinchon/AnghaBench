
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_REUSEPORT ;
 int accept (int,int *,int *) ;
 scalar_t__ bind (int,void*,int ) ;
 int cfg_alen ;
 int cfg_bind_addr ;
 int cfg_connect_timeout_ms ;
 int cfg_family ;
 scalar_t__ cfg_tcp ;
 scalar_t__ close (int) ;
 int do_poll (int,int ) ;
 int errno ;
 int error (int,int ,char*) ;
 int exit (int ) ;
 scalar_t__ interrupted ;
 scalar_t__ listen (int,int) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int do_socket(bool do_tcp)
{
 int fd, val;

 fd = socket(cfg_family, cfg_tcp ? SOCK_STREAM : SOCK_DGRAM, 0);
 if (fd == -1)
  error(1, errno, "socket");

 val = 1 << 21;
 if (setsockopt(fd, SOL_SOCKET, SO_RCVBUF, &val, sizeof(val)))
  error(1, errno, "setsockopt rcvbuf");
 val = 1;
 if (setsockopt(fd, SOL_SOCKET, SO_REUSEPORT, &val, sizeof(val)))
  error(1, errno, "setsockopt reuseport");

 if (bind(fd, (void *)&cfg_bind_addr, cfg_alen))
  error(1, errno, "bind");

 if (do_tcp) {
  int accept_fd = fd;

  if (listen(accept_fd, 1))
   error(1, errno, "listen");

  do_poll(accept_fd, cfg_connect_timeout_ms);
  if (interrupted)
   exit(0);

  fd = accept(accept_fd, ((void*)0), ((void*)0));
  if (fd == -1)
   error(1, errno, "accept");
  if (close(accept_fd))
   error(1, errno, "close accept fd");
 }

 return fd;
}
