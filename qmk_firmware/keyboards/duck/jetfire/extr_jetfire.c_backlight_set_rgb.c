
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int Device_PCBRGB ;
 size_t RGBLED_NUM ;
 int cli () ;
 int sei () ;
 int send_color (size_t,size_t,size_t,int ) ;
 int show () ;

void backlight_set_rgb(uint8_t cfg[RGBLED_NUM][3])
{
  cli();
  for(uint8_t i = 0; i < RGBLED_NUM; ++i) {
    send_color(cfg[i][0], cfg[i][1], cfg[i][2], Device_PCBRGB);
  }
  sei();
  show();
}
