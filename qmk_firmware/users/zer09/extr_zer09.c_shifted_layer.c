
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LSFT ;
 scalar_t__ _VL ;
 scalar_t__ c_lyr ;
 int register_code (int ) ;
 int unregister_code (int ) ;

bool shifted_layer(void) {
  static bool is_shifted = 0;

  if (c_lyr == _VL) {
    if (!is_shifted) {
      register_code(KC_LSFT);
      is_shifted = 1;
      return 1;
    }
  } else {
    if (is_shifted) {
      unregister_code(KC_LSFT);
      is_shifted = 0;
      return 1;
    }
  }

  return 0;
}
