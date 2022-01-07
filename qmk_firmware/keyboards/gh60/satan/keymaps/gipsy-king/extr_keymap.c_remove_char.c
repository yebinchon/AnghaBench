
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cursor_pos ;
 int rgblight_sethsv_at (int ,int ,int ,scalar_t__) ;

void remove_char(void) {
  if (cursor_pos == 0) return;

  rgblight_sethsv_at(0, 0, 0, cursor_pos);
  rgblight_sethsv_at(0, 0, 0, cursor_pos - 1);
  cursor_pos -= 1;
}
