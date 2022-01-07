
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int LED_TYPE ;


 scalar_t__ layer_state_cmp (int ,int) ;
 int * led ;
 int rgblight_set () ;
 int setrgb (int,int,int,int *) ;

uint32_t layer_state_set_user(uint32_t state){
  return state;
}
