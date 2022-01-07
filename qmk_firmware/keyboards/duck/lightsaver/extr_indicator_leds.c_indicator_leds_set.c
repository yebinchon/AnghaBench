
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Device_STATUSLED ;
 int cli () ;
 int sei () ;
 int send_color (int,int,int,int ) ;
 int show () ;

void indicator_leds_set(bool leds[8]) {
  cli();
  send_color(leds[1] ? 255 : 0, leds[2] ? 255 : 0, leds[0] ? 255 : 0, Device_STATUSLED);
  send_color(leds[4] ? 255 : 0, leds[5] ? 255 : 0, leds[3] ? 255 : 0, Device_STATUSLED);
  send_color(leds[6] ? 255 : 0, leds[7] ? 255 : 0, 0, Device_STATUSLED);
  sei();
  show();
}
