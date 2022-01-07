
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int cursor_pos ;
 int fmin (int,int) ;
 int rgblight_get_hue () ;
 int rgblight_get_sat () ;
 int rgblight_sethsv_at (int ,int ,int,int ) ;

void animate_cursor(uint16_t pos) {
  uint16_t value = pos < 196 ? fmin(255, pos * 16) : (255 - (pos * 2));
  rgblight_sethsv_at(rgblight_get_hue(), rgblight_get_sat(), value, cursor_pos);
}
