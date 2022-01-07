
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int value; } ;
struct event {TYPE_1__ result; } ;
typedef int s64 ;


 int PR_TASK_PERF_EVENTS_DISABLE ;
 int PR_TASK_PERF_EVENTS_ENABLE ;
 int event_read (struct event*) ;
 int event_report (struct event*) ;
 int event_reset (struct event*) ;
 int prctl (int ) ;
 int printf (char*,int,...) ;
 int thirty_two_instruction_loop (int) ;

__attribute__((used)) static int do_count_loop(struct event *events, u64 instructions,
    u64 overhead, bool report)
{
 s64 difference, expected;
 double percentage;

 prctl(PR_TASK_PERF_EVENTS_ENABLE);


 thirty_two_instruction_loop(instructions >> 5);

 prctl(PR_TASK_PERF_EVENTS_DISABLE);

 event_read(&events[0]);
 event_read(&events[1]);

 expected = instructions + overhead;
 difference = events[0].result.value - expected;
 percentage = (double)difference / events[0].result.value * 100;

 if (report) {
  event_report(&events[0]);
  event_report(&events[1]);

  printf("Looped for %llu instructions, overhead %llu\n", instructions, overhead);
  printf("Expected %llu\n", expected);
  printf("Actual   %llu\n", events[0].result.value);
  printf("Delta    %lld, %f%%\n", difference, percentage);
 }

 event_reset(&events[0]);
 event_reset(&events[1]);

 if (difference < 0)
  difference = -difference;


 difference *= 10000 * 100;
 if (difference / events[0].result.value)
  return -1;

 return 0;
}
