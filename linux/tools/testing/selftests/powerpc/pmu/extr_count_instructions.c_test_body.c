
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct event {int fd; } ;


 int FAIL_IF (int ) ;
 int PERF_COUNT_HW_CPU_CYCLES ;
 int PERF_COUNT_HW_INSTRUCTIONS ;
 int determine_overhead (struct event*) ;
 int do_count_loop (struct event*,int,int ,int) ;
 int event_close (struct event*) ;
 scalar_t__ event_open (struct event*) ;
 scalar_t__ event_open_with_group (struct event*,int ) ;
 int perror (char*) ;
 int printf (char*,int ) ;
 int setup_event (struct event*,int ,char*) ;

__attribute__((used)) static int test_body(void)
{
 struct event events[2];
 u64 overhead;

 setup_event(&events[0], PERF_COUNT_HW_INSTRUCTIONS, "instructions");
 setup_event(&events[1], PERF_COUNT_HW_CPU_CYCLES, "cycles");

 if (event_open(&events[0])) {
  perror("perf_event_open");
  return -1;
 }

 if (event_open_with_group(&events[1], events[0].fd)) {
  perror("perf_event_open");
  return -1;
 }

 overhead = determine_overhead(events);
 printf("Overhead of null loop: %llu instructions\n", overhead);


 FAIL_IF(do_count_loop(events, 1000000, overhead, 1));


 FAIL_IF(do_count_loop(events, 10000000, overhead, 1));


 FAIL_IF(do_count_loop(events, 100000000, overhead, 1));


 FAIL_IF(do_count_loop(events, 1000000000, overhead, 1));


 FAIL_IF(do_count_loop(events, 16000000000, overhead, 1));


 FAIL_IF(do_count_loop(events, 64000000000, overhead, 1));

 event_close(&events[0]);
 event_close(&events[1]);

 return 0;
}
