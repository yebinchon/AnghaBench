
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max; scalar_t__ min; } ;


 scalar_t__ chrysler_desired_torque_last ;
 scalar_t__ chrysler_rt_torque_last ;
 TYPE_1__ chrysler_torque_meas ;
 scalar_t__ chrysler_ts_last ;
 int init_tests () ;
 int set_timer (int ) ;

void init_tests_chrysler(void){
  init_tests();
  chrysler_torque_meas.min = 0;
  chrysler_torque_meas.max = 0;
  chrysler_desired_torque_last = 0;
  chrysler_rt_torque_last = 0;
  chrysler_ts_last = 0;
  set_timer(0);
}
