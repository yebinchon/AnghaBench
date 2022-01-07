
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int type; int size; int read_format; int config; } ;
struct event {char* name; TYPE_1__ attr; } ;


 int PERF_FORMAT_TOTAL_TIME_ENABLED ;
 int PERF_FORMAT_TOTAL_TIME_RUNNING ;
 int memset (struct event*,int ,int) ;

void event_init_opts(struct event *e, u64 config, int type, char *name)
{
 memset(e, 0, sizeof(*e));

 e->name = name;

 e->attr.type = type;
 e->attr.config = config;
 e->attr.size = sizeof(e->attr);

 e->attr.read_format = PERF_FORMAT_TOTAL_TIME_ENABLED | PERF_FORMAT_TOTAL_TIME_RUNNING;

}
