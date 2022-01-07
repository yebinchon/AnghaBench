
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int disabled; int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;


 int PERF_TYPE_HARDWARE ;
 int event_init_opts (struct event*,int ,int ,char*) ;

__attribute__((used)) static void setup_event(struct event *e, u64 config, char *name)
{
 event_init_opts(e, config, PERF_TYPE_HARDWARE, name);

 e->attr.disabled = 1;
 e->attr.exclude_kernel = 1;
 e->attr.exclude_hv = 1;
 e->attr.exclude_idle = 1;
}
