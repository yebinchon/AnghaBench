
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef int pid_t ;


 int PERF_NO_CPU ;
 int PERF_NO_GROUP ;
 int event_open_with_options (struct event*,int ,int ,int ) ;

int event_open_with_pid(struct event *e, pid_t pid)
{
 return event_open_with_options(e, pid, PERF_NO_CPU, PERF_NO_GROUP);
}
