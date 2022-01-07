
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sw_sync_timeline_is_valid (int) ;

int sw_sync_fence_is_valid(int fd)
{

 return sw_sync_timeline_is_valid(fd);
}
