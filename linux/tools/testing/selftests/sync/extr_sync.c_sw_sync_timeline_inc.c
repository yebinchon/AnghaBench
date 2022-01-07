
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int __u32 ;


 int SW_SYNC_IOC_INC ;
 int ioctl (int,int ,unsigned int*) ;

int sw_sync_timeline_inc(int fd, unsigned int count)
{
 __u32 arg = count;

 return ioctl(fd, SW_SYNC_IOC_INC, &arg);
}
