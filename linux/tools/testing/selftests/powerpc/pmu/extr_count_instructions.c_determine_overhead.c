
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ value; } ;
struct event {TYPE_1__ result; } ;


 int do_count_loop (struct event*,int ,int ,int) ;
 int printf (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static u64 determine_overhead(struct event *events)
{
 u64 current, overhead;
 int i;

 do_count_loop(events, 0, 0, 0);
 overhead = events[0].result.value;

 for (i = 0; i < 100; i++) {
  do_count_loop(events, 0, 0, 0);
  current = events[0].result.value;
  if (current < overhead) {
   printf("Replacing overhead %llu with %llu\n", overhead, current);
   overhead = current;
  }
 }

 return overhead;
}
