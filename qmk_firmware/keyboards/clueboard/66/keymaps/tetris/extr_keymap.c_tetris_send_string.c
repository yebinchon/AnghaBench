
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KC_0 ;
 scalar_t__ KC_1 ;
 scalar_t__ KC_A ;
 scalar_t__ KC_DOT ;
 scalar_t__ KC_SPACE ;
 int send_keycode (scalar_t__) ;
 int send_keycode_shift (scalar_t__) ;

void tetris_send_string(const char *s) {
  for (int i = 0; s[i] != 0; i++) {
    if (s[i] >= 'a' && s[i] <= 'z') {
      send_keycode(KC_A + (s[i] - 'a'));
    } else if (s[i] >= 'A' && s[i] <= 'Z') {
      send_keycode_shift(KC_A + (s[i] - 'A'));
    } else if (s[i] >= '1' && s[i] <= '9') {
      send_keycode(KC_1 + (s[i] - '1'));
    } else {
      switch (s[i]) {
      case ' ': send_keycode(KC_SPACE); break;
      case '.': send_keycode(KC_DOT); break;
      case '0': send_keycode(KC_0); break;
      }
    }
  }
}
