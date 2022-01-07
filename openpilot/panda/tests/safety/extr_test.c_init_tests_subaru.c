
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max; scalar_t__ min; } ;


 int init_tests () ;
 int set_timer (int ) ;
 scalar_t__ subaru_desired_torque_last ;
 scalar_t__ subaru_rt_torque_last ;
 TYPE_1__ subaru_torque_driver ;
 scalar_t__ subaru_ts_last ;

void init_tests_subaru(void){
  init_tests();
  subaru_torque_driver.min = 0;
  subaru_torque_driver.max = 0;
  subaru_desired_torque_last = 0;
  subaru_rt_torque_last = 0;
  subaru_ts_last = 0;
  set_timer(0);
}
