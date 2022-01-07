
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max; scalar_t__ min; } ;


 scalar_t__* cadillac_desired_torque_last ;
 scalar_t__ cadillac_rt_torque_last ;
 TYPE_1__ cadillac_torque_driver ;
 scalar_t__ cadillac_ts_last ;
 int init_tests () ;
 int set_timer (int ) ;

void init_tests_cadillac(void){
  init_tests();
  cadillac_torque_driver.min = 0;
  cadillac_torque_driver.max = 0;
  for (int i = 0; i < 4; i++) cadillac_desired_torque_last[i] = 0;
  cadillac_rt_torque_last = 0;
  cadillac_ts_last = 0;
  set_timer(0);
}
