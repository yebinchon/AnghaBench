
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int fd; } ;


 int PERF_EVENT_IOC_ENABLE ;
 int event_read (struct event*) ;
 int ioctl (int ,int ) ;
 int mb () ;

int ebb_event_enable(struct event *e)
{
 int rc;


 mb();

 rc = ioctl(e->fd, PERF_EVENT_IOC_ENABLE);
 if (rc)
  return rc;

 rc = event_read(e);


 mb();

 return rc;
}
