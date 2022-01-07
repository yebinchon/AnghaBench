
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ RGBLED_NUM ;
 scalar_t__ cursor_pos ;
 int rgblight_sethsv_at (int ,int ,int ,scalar_t__) ;

void reset_chars(void) {

  for (uint8_t i = 0; i < RGBLED_NUM; i++) {

    if (i == 0 && cursor_pos == 0) {
        continue;
    }
    rgblight_sethsv_at(0, 0, 0, i);
  }
  cursor_pos = 0;
}
