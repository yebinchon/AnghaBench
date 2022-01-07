
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_LAYER_ON (int ) ;
 int KC_DOWN ;
 int KC_LEFT ;
 int KC_RGHT ;
 int KC_UP ;
 int _RAISE ;
 int clicky_freq_down () ;
 int clicky_freq_up () ;
 float clicky_rand ;
 scalar_t__ is_clicky_on () ;
 scalar_t__ muse_mode ;
 int muse_offset ;
 int muse_tempo ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void encoder_update(bool clockwise) {
  if (is_clicky_on()) {
    if (IS_LAYER_ON(_RAISE)) {
      if (clockwise) {
        clicky_rand += 0.5f;
      } else {
        clicky_rand -= 0.5f;
      }
    } else {
      if (clockwise) {
        clicky_freq_up();
      } else {
        clicky_freq_down();
      }
    }
  } else if (muse_mode) {
    if (IS_LAYER_ON(_RAISE)) {
      if (clockwise) {
        muse_offset++;
      } else {
        muse_offset--;
      }
    } else {
      if (clockwise) {
        muse_tempo+=1;
      } else {
        muse_tempo-=1;
      }
    }
  } else {
    if (IS_LAYER_ON(_RAISE)) {
      if (clockwise) {
        register_code(KC_RGHT);
        unregister_code(KC_RGHT);
      } else {
        register_code(KC_LEFT);
        unregister_code(KC_LEFT);
      }
    } else {
      if (clockwise) {
        register_code(KC_DOWN);
        unregister_code(KC_DOWN);
      } else {
        register_code(KC_UP);
        unregister_code(KC_UP);
      }
    }
  }
}
