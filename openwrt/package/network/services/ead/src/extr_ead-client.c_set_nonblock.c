
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int ,int ,int) ;
 int s ;
 int sockflags ;

__attribute__((used)) static void
set_nonblock(int enable)
{
 if (enable == !!(sockflags & O_NONBLOCK))
  return;

 sockflags ^= O_NONBLOCK;
 fcntl(s, F_SETFL, sockflags);
}
