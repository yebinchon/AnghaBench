
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max; scalar_t__ min; } ;


 int init_tests () ;
 int set_timer (int ) ;
 scalar_t__ toyota_desired_torque_last ;
 scalar_t__ toyota_rt_torque_last ;
 TYPE_1__ toyota_torque_meas ;
 scalar_t__ toyota_ts_last ;

void init_tests_toyota(void){
  init_tests();
  toyota_torque_meas.min = 0;
  toyota_torque_meas.max = 0;
  toyota_desired_torque_last = 0;
  toyota_rt_torque_last = 0;
  toyota_ts_last = 0;
  set_timer(0);
}
