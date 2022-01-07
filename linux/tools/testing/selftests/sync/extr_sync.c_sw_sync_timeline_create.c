
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int open (char*,int ) ;

int sw_sync_timeline_create(void)
{
 return open("/sys/kernel/debug/sync/sw_sync", O_RDWR);
}
