
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float uint32_t ;


 float mgos_get_cpu_freq () ;
 int mgos_nsleep100 ;
 int mgos_nsleep100_impl ;
 int mgos_nsleep100_loop_count ;
 int roundf (float) ;

void mgos_nsleep100_cal(void) {
  uint32_t cpu_freq = mgos_get_cpu_freq();

  mgos_nsleep100_loop_count =
      roundf((100.0f / 1000000000.0f) / (1.0f / cpu_freq));
  mgos_nsleep100 = mgos_nsleep100_impl;
}
