
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ caps_lock; int num_lock; } ;
typedef TYPE_1__ led_t ;


 int JOTANCK_LED2 ;
 int KC_NUMLOCK ;
 int tap_code (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

bool led_update_user(led_t led_state) {


  if (!led_state.num_lock) {
    tap_code(KC_NUMLOCK);
  }
  return 1;
}
