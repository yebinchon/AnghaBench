
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERF_EVENT_IOC_RESET ;
 int PERF_IOC_FLAG_GROUP ;
 int ioctl (int,int ,int ) ;
 int perror (char*) ;

int perf_event_reset(int fd)
{
 if (ioctl(fd, PERF_EVENT_IOC_RESET, PERF_IOC_FLAG_GROUP) == -1) {
  perror("error resetting perf events");
  return -1;
 }

 return 0;
}
