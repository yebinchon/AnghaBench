
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mods; } ;


 int FNAV ;
 scalar_t__ IS_LAYER_ON (int ) ;
 int KC_LALT ;
 int KC_LSFT ;
 int MOD_BIT (int ) ;
 int get_oneshot_mods () ;
 int has_oneshot_mods_timed_out () ;
 int indicate_using_led (int,int) ;
 TYPE_1__* keyboard_report ;

void matrix_scan_user(void) {


  if (keyboard_report->mods & MOD_BIT(KC_LSFT) ||
    ((get_oneshot_mods() & MOD_BIT(KC_LSFT)) && !has_oneshot_mods_timed_out())) {
    indicate_using_led(1, 1);
  } else {
    indicate_using_led(1, 0);
  }


  if (keyboard_report->mods & MOD_BIT(KC_LALT) ||
    ((get_oneshot_mods() & MOD_BIT(KC_LALT)) && !has_oneshot_mods_timed_out())) {
    indicate_using_led(2, 1);
  } else {
    indicate_using_led(2, 0);
  }


  if (IS_LAYER_ON(FNAV)) {
    indicate_using_led(3, 1);
  } else {
    indicate_using_led(3, 0);
  }
}
