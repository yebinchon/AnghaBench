
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max; scalar_t__ min; } ;


 scalar_t__ gm_desired_torque_last ;
 scalar_t__ gm_rt_torque_last ;
 TYPE_1__ gm_torque_driver ;
 scalar_t__ gm_ts_last ;
 int init_tests () ;
 int set_timer (int ) ;

void init_tests_gm(void){
  init_tests();
  gm_torque_driver.min = 0;
  gm_torque_driver.max = 0;
  gm_desired_torque_last = 0;
  gm_rt_torque_last = 0;
  gm_ts_last = 0;
  set_timer(0);
}
