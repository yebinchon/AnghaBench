
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEND_STRING (int ) ;
 int SS_TAP (int ) ;
 int USB_LED_NUM_LOCK ;
 int X_NUMLOCK ;
 int host_keyboard_leds () ;

void matrix_init_user(void) {

  if (!(host_keyboard_leds() & (1<<USB_LED_NUM_LOCK))) {
      SEND_STRING(SS_TAP(X_NUMLOCK));
  }
}
