
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct event {int dummy; } ;


 int PERF_TYPE_RAW ;
 int event_init_opts (struct event*,int ,int ,char*) ;

void event_init_named(struct event *e, u64 config, char *name)
{
 event_init_opts(e, config, PERF_TYPE_RAW, name);
}
