
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LED_TYPE ;


 int * aqours_color_h ;
 int * aqours_color_s ;
 int * aqours_color_v ;
 int * led ;
 int rgblight_set () ;
 int sethsv (int ,int ,int ,int *) ;

void LED_layer_set(int aqours_index) {
  for (int c = 0; c < 9; c++) {
    sethsv(aqours_color_h[aqours_index], aqours_color_s[aqours_index], aqours_color_v[aqours_index], (LED_TYPE *)&led[c]);
  }
  rgblight_set();
}
