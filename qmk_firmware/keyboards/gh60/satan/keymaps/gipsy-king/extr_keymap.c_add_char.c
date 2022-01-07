
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RGBLED_NUM ;
 int cursor_pos ;
 int reset_chars () ;
 int rgblight_get_hue () ;
 int rgblight_get_sat () ;
 int rgblight_get_val () ;
 int rgblight_sethsv_at (int ,int ,int ,int) ;

void add_char(bool space) {
  if (cursor_pos == RGBLED_NUM - 1) {
    cursor_pos = 0;
    reset_chars();
    return;
  }

  if (space) {
    rgblight_sethsv_at(0, 0, 0, cursor_pos);
  } else {
    rgblight_sethsv_at(rgblight_get_hue(), rgblight_get_sat(), rgblight_get_val(), cursor_pos);
  }
  cursor_pos += 1;
}
