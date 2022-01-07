
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LED_TYPE ;


 int * led ;
 int rgblight_set () ;
 int sethsv (int,int,int,int *) ;

void set_colors(int r, int g, int b) {
  for(int i = 0; i<6; i++) {
    sethsv(r, g, b, (LED_TYPE *)&led[i]);
  }
  rgblight_set();
}
