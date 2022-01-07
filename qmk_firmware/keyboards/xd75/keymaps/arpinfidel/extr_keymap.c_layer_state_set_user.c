
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int biton32 (int ) ;
 int gp100_led_off () ;
 int gp100_led_on () ;
 int gp103_led_off () ;
 int gp103_led_on () ;

uint32_t layer_state_set_user(uint32_t state) {
  uint8_t layer = biton32(state);

  gp100_led_off();
  gp103_led_off();


  if (layer & (1<<0)) gp100_led_on();

  if (layer & (1<<1)) gp103_led_on();

  return state;
}
