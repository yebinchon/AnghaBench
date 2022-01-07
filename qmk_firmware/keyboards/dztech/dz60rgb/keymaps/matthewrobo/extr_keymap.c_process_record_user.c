
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_B ;
 int KC_RCTL ;
 int register_code (int ) ;
 int reset_keyboard () ;
 int rgb_matrix_enable_noeeprom () ;
 int rgb_matrix_mode_noeeprom (int) ;
 int rgb_matrix_sethsv (int,int,int) ;
 int rgb_matrix_sethsv_noeeprom (int,int,int) ;
 int tap_code (int ) ;
 int timer_elapsed32 (int ) ;
 int timer_read32 () ;
 int unregister_code (int ) ;
 int wait_ms (int) ;

bool process_record_user(uint16_t keycode, keyrecord_t* record)
{
 static uint32_t key_timer;

 switch (keycode) {
 case 128:
  if (record->event.pressed) {
   key_timer = timer_read32();
  } else {
   if (timer_elapsed32(key_timer) >= 500) {
    rgb_matrix_enable_noeeprom();
    rgb_matrix_mode_noeeprom(1);
    rgb_matrix_sethsv_noeeprom(11, 11, 11);
    wait_ms(150);
    reset_keyboard();
   } else {
    register_code(KC_RCTL);
    tap_code(KC_B);
    unregister_code(KC_RCTL);
   }
  }

  return 0;

 case 137:
  if (record->event.pressed) {
   rgb_matrix_sethsv(32, 160, 255);
  }

  return 0;

 case 132:
  if (record->event.pressed) {
   rgb_matrix_sethsv(192, 112, 255);
  }

  return 0;

 case 131:
  if (record->event.pressed) {
   rgb_matrix_sethsv(0, 255, 255);
  }

  return 0;

 case 135:
  if (record->event.pressed) {
   rgb_matrix_sethsv(88, 255, 255);
  }

  return 0;

 case 138:
  if (record->event.pressed) {
   rgb_matrix_sethsv(168, 255, 255);
  }

  return 0;

 case 136:
  if (record->event.pressed) {
   rgb_matrix_sethsv(128, 255, 255);
  }

  return 0;

 case 133:
  if (record->event.pressed) {
   rgb_matrix_sethsv(216, 255, 255);
  }

  return 0;

 case 129:
  if (record->event.pressed) {
   rgb_matrix_sethsv(40, 255, 255);
  }

  return 0;

 case 134:
  if (record->event.pressed) {
   rgb_matrix_sethsv(0, 0, 0);
  }

  return 0;

 case 130:
  if (record->event.pressed) {
   rgb_matrix_sethsv(128, 0, 255);
  }

  return 0;

 default:
  return 1;
 }
}
