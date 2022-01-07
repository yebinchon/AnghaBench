
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_LAYER_ON (int ) ;
 int KC_MS_WH_DOWN ;
 int KC_MS_WH_UP ;
 int KC_PGDN ;
 int KC_PGUP ;
 int _RAISE ;
 scalar_t__ muse_mode ;
 int muse_offset ;
 int muse_tempo ;
 int tap_code (int ) ;

void encoder_update(bool clockwise) {
  if (muse_mode) {
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
    if (clockwise) {



        tap_code(KC_PGDN);

    } else {



        tap_code(KC_PGUP);

    }
  }
}
