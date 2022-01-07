
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgsocket ;


 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int ,int ,...) ;
 scalar_t__ ioctlsocket (int ,int ,unsigned long*) ;

bool
pg_set_block(pgsocket sock)
{

 int flags;

 flags = fcntl(sock, F_GETFL);
 if (flags < 0)
  return 0;
 if (fcntl(sock, F_SETFL, (flags & ~O_NONBLOCK)) == -1)
  return 0;
 return 1;






}
