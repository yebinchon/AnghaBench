
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RGBSPS_NUM ;
 int led ;
 int ws2812_setleds (int ,int ) ;

void rgbsps_send(void) {
  ws2812_setleds(led, RGBSPS_NUM);
}
