
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;


 int PERF_CURRENT_PID ;
 int PERF_NO_CPU ;
 int PERF_NO_GROUP ;
 int event_open_with_options (struct event*,int ,int ,int ) ;

int event_open(struct event *e)
{
 return event_open_with_options(e, PERF_CURRENT_PID, PERF_NO_CPU, PERF_NO_GROUP);
}
