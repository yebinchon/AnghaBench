
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ led_cur ;
 scalar_t__ led_cur_index ;
 scalar_t__ led_map ;
 scalar_t__ led_per_run ;
 scalar_t__ lede ;
 int update_led_boosts () ;
 int update_led_cur_rgb_values () ;

void led_matrix_run(void) {
  uint8_t led_this_run = 0;

  if (led_cur == 0) {
    led_cur = led_map;
    led_cur_index = 0;
  }
  update_led_boosts();

  while (led_cur < lede && led_this_run < led_per_run) {
    update_led_cur_rgb_values();

    led_cur++;
    led_cur_index++;
    led_this_run++;
  }
}
