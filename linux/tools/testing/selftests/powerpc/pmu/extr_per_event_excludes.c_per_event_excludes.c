
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ running; scalar_t__ enabled; scalar_t__ value; } ;
struct TYPE_3__ {int disabled; int exclude_user; int exclude_hv; int exclude_kernel; } ;
struct event {TYPE_2__ result; int fd; TYPE_1__ attr; } ;


 int AT_BASE_PLATFORM ;
 int FAIL_IF (int) ;
 int INT_MAX ;
 int PERF_COUNT_HW_INSTRUCTIONS ;
 int PERF_TYPE_HARDWARE ;
 int PR_TASK_PERF_EVENTS_DISABLE ;
 int PR_TASK_PERF_EVENTS_ENABLE ;
 int SKIP_IF (int) ;
 int event_close (struct event*) ;
 int event_init_opts (struct event*,int ,int ,char*) ;
 int event_open (struct event*) ;
 int event_open_with_group (struct event*,int ) ;
 int event_read (struct event*) ;
 int event_report (struct event*) ;
 scalar_t__ get_auxv_entry (int ) ;
 int prctl (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int per_event_excludes(void)
{
 struct event *e, events[4];
 char *platform;
 int i;

 platform = (char *)get_auxv_entry(AT_BASE_PLATFORM);
 FAIL_IF(!platform);
 SKIP_IF(strcmp(platform, "power8") != 0);





 e = &events[0];
 event_init_opts(e, PERF_COUNT_HW_INSTRUCTIONS,
   PERF_TYPE_HARDWARE, "instructions");
 e->attr.disabled = 1;

 e = &events[1];
 event_init_opts(e, PERF_COUNT_HW_INSTRUCTIONS,
   PERF_TYPE_HARDWARE, "instructions(k)");
 e->attr.disabled = 1;
 e->attr.exclude_user = 1;
 e->attr.exclude_hv = 1;

 e = &events[2];
 event_init_opts(e, PERF_COUNT_HW_INSTRUCTIONS,
   PERF_TYPE_HARDWARE, "instructions(h)");
 e->attr.disabled = 1;
 e->attr.exclude_user = 1;
 e->attr.exclude_kernel = 1;

 e = &events[3];
 event_init_opts(e, PERF_COUNT_HW_INSTRUCTIONS,
   PERF_TYPE_HARDWARE, "instructions(u)");
 e->attr.disabled = 1;
 e->attr.exclude_hv = 1;
 e->attr.exclude_kernel = 1;

 FAIL_IF(event_open(&events[0]));






 for (i = 1; i < 4; i++)
  FAIL_IF(event_open_with_group(&events[i], events[0].fd));





 prctl(PR_TASK_PERF_EVENTS_ENABLE);


 for (i = 0; i < INT_MAX; i++)
  asm volatile("" : : : "memory");

 prctl(PR_TASK_PERF_EVENTS_DISABLE);

 for (i = 0; i < 4; i++) {
  FAIL_IF(event_read(&events[i]));
  event_report(&events[i]);
 }





 for (i = 0; i < 4; i++)
  FAIL_IF(events[i].result.running != events[i].result.enabled);






 for (i = 1; i < 4; i++)
  FAIL_IF(events[0].result.value < events[i].result.value);

 for (i = 0; i < 4; i++)
  event_close(&events[i]);

 return 0;
}
