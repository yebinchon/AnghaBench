
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int Device_PCBRGB ;
 int cli () ;
 int sei () ;
 int send_color (int,int,int,int ) ;
 int show () ;

void backlight_set_rgb(uint8_t cfg[17][3])
{
  cli();
  for(uint8_t i = 0; i < 17; ++i) {
    send_color(cfg[i][0], cfg[i][1], cfg[i][2], Device_PCBRGB);
  }
  sei();
  show();
}
