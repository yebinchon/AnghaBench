
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int fd; } ;


 int PERF_EVENT_IOC_DISABLE ;
 int ioctl (int ,int ) ;

int event_disable(struct event *e)
{
 return ioctl(e->fd, PERF_EVENT_IOC_DISABLE);
}
