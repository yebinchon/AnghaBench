
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;


 int PERF_NO_GROUP ;
 int PERF_NO_PID ;
 int event_open_with_options (struct event*,int ,int,int ) ;

int event_open_with_cpu(struct event *e, int cpu)
{
 return event_open_with_options(e, PERF_NO_PID, cpu, PERF_NO_GROUP);
}
