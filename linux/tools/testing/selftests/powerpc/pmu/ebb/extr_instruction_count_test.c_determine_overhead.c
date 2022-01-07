
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ value; } ;
struct event {TYPE_1__ result; } ;


 int do_count_loop (struct event*,int ,int ,int) ;
 int printf (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint64_t determine_overhead(struct event *event)
{
 uint64_t current, overhead;
 int i;

 do_count_loop(event, 0, 0, 0);
 overhead = event->result.value;

 for (i = 0; i < 100; i++) {
  do_count_loop(event, 0, 0, 0);
  current = event->result.value;
  if (current < overhead) {
   printf("Replacing overhead %lu with %lu\n", overhead, current);
   overhead = current;
  }
 }

 return overhead;
}
