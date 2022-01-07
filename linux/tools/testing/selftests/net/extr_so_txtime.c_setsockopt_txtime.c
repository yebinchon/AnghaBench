
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_txtime {int member_0; int clockid; } ;
typedef int socklen_t ;
typedef int so_txtime_val ;


 int SOL_SOCKET ;
 int SO_TXTIME ;
 int cfg_clockid ;
 int errno ;
 int error (int,int ,char*) ;
 scalar_t__ getsockopt (int,int ,int ,struct sock_txtime*,int*) ;
 scalar_t__ memcmp (struct sock_txtime*,struct sock_txtime*,int) ;
 scalar_t__ setsockopt (int,int ,int ,struct sock_txtime*,int) ;

__attribute__((used)) static void setsockopt_txtime(int fd)
{
 struct sock_txtime so_txtime_val = { .clockid = cfg_clockid };
 struct sock_txtime so_txtime_val_read = { 0 };
 socklen_t vallen = sizeof(so_txtime_val);

 if (setsockopt(fd, SOL_SOCKET, SO_TXTIME,
         &so_txtime_val, sizeof(so_txtime_val)))
  error(1, errno, "setsockopt txtime");

 if (getsockopt(fd, SOL_SOCKET, SO_TXTIME,
         &so_txtime_val_read, &vallen))
  error(1, errno, "getsockopt txtime");

 if (vallen != sizeof(so_txtime_val) ||
     memcmp(&so_txtime_val, &so_txtime_val_read, vallen))
  error(1, 0, "getsockopt txtime: mismatch");
}
