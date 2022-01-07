
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int honda_brake_pressed_prev ;
 int honda_fwd_brake ;
 scalar_t__ honda_gas_prev ;
 int honda_moving ;
 int init_tests () ;

void init_tests_honda(void){
  init_tests();
  honda_moving = 0;
  honda_brake_pressed_prev = 0;
  honda_gas_prev = 0;
  honda_fwd_brake = 0;
}
