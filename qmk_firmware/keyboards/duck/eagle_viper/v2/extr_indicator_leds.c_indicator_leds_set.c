
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int Device_STATUSLED ;
 int cli () ;
 int sei () ;
 int send_value (int,int ) ;
 int show () ;

void indicator_leds_set(bool leds[8]) {
  uint8_t led_cnt;

  cli();
  for(led_cnt = 0; led_cnt < 8; led_cnt++)
    send_value(leds[led_cnt] ? 255 : 0, Device_STATUSLED);
  sei();
  show();
}
