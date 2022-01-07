
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFD ;
 int fcntl (int,int ,int ) ;

int sw_sync_timeline_is_valid(int fd)
{
 int status;

 if (fd == -1)
  return 0;

 status = fcntl(fd, F_GETFD, 0);
 return (status >= 0);
}
