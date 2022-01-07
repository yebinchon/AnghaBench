
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max; scalar_t__ min; } ;


 scalar_t__ hyundai_desired_torque_last ;
 scalar_t__ hyundai_rt_torque_last ;
 TYPE_1__ hyundai_torque_driver ;
 scalar_t__ hyundai_ts_last ;
 int init_tests () ;
 int set_timer (int ) ;

void init_tests_hyundai(void){
  init_tests();
  hyundai_torque_driver.min = 0;
  hyundai_torque_driver.max = 0;
  hyundai_desired_torque_last = 0;
  hyundai_rt_torque_last = 0;
  hyundai_ts_last = 0;
  set_timer(0);
}
