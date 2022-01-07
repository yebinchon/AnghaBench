
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 scalar_t__ sw_sync_timeline_is_valid (int) ;

void sw_sync_timeline_destroy(int fd)
{
 if (sw_sync_timeline_is_valid(fd))
  close(fd);
}
