
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int update_led () ;

uint32_t layer_state_set_user(uint32_t state) {
  update_led();
  return state;
}
