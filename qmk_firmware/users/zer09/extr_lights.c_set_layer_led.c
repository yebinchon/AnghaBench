
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t RGBLED_NUM ;
 int SET_LED_RGB (size_t const,size_t const,size_t const,size_t const,size_t) ;
 size_t** _LC ;
 size_t _VL ;
 int is_first_run () ;
 size_t led_dim ;

bool set_layer_led(uint8_t lyr) {
  static uint8_t p_lyr = 0;
  static uint8_t p_dim = 0;

  if (p_lyr == lyr && p_dim == led_dim && !is_first_run()) {
    return 0;
  }

  p_lyr = lyr;
  p_dim = led_dim;
  const uint8_t r = _LC[lyr][0];
  const uint8_t g = _LC[lyr][1];
  const uint8_t b = _LC[lyr][2];
  const uint8_t d = (p_lyr == _VL && p_dim < 1) ? 1 : p_dim;

  for (uint8_t i = 0; i < RGBLED_NUM; i++) {
    SET_LED_RGB(r, g, b, d, i);
  }

  return 1;
}
