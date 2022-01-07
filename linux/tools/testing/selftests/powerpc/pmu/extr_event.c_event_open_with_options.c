
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int fd; int attr; } ;
typedef int pid_t ;


 int perf_event_open (int *,int ,int,int,int ) ;
 int perror (char*) ;

int event_open_with_options(struct event *e, pid_t pid, int cpu, int group_fd)
{
 e->fd = perf_event_open(&e->attr, pid, cpu, group_fd, 0);
 if (e->fd == -1) {
  perror("perf_event_open");
  return -1;
 }

 return 0;
}
