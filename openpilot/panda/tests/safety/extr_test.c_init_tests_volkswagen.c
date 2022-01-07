
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max; scalar_t__ min; } ;


 int init_tests () ;
 int set_timer (int ) ;
 scalar_t__ volkswagen_desired_torque_last ;
 scalar_t__ volkswagen_rt_torque_last ;
 TYPE_1__ volkswagen_torque_driver ;
 scalar_t__ volkswagen_ts_last ;

void init_tests_volkswagen(void){
  init_tests();
  volkswagen_torque_driver.min = 0;
  volkswagen_torque_driver.max = 0;
  volkswagen_desired_torque_last = 0;
  volkswagen_rt_torque_last = 0;
  volkswagen_ts_last = 0;
  set_timer(0);
}
