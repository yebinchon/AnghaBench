
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgblight_mode (int) ;
 int rgblight_sethsv_blue () ;

void reset_rgb(void) {


  rgblight_sethsv_blue();
  rgblight_mode(7);
}
