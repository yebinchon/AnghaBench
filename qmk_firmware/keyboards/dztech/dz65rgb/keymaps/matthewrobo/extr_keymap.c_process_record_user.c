
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
 int eeconfig_init () ;
 int reset_keyboard () ;
 int rgb_matrix_sethsv (int,int,int) ;
 int timer_elapsed32 (int ) ;
 int timer_read32 () ;

bool process_record_user(uint16_t keycode, keyrecord_t* record)
{
 static uint32_t key_timer;

 switch (keycode) {
 case 129:
  if (record->event.pressed) {
   key_timer = timer_read32();
  } else {
   if (timer_elapsed32(key_timer) >= 500) {
    reset_keyboard();
   }
  }

  return 0;

 case 128:
  if (record->event.pressed) {
   key_timer = timer_read32();
  } else {
   if (timer_elapsed32(key_timer) >= 500) {
    eeconfig_init();
   }
  }

  return 0;

 case 138:
  if (record->event.pressed) {
   rgb_matrix_sethsv(32, 160, 255);
  }

  return 0;

 case 133:
  if (record->event.pressed) {
   rgb_matrix_sethsv(192, 112, 255);
  }

  return 0;

 case 132:
  if (record->event.pressed) {
   rgb_matrix_sethsv(0, 255, 255);
  }

  return 0;

 case 136:
  if (record->event.pressed) {
   rgb_matrix_sethsv(88, 255, 255);
  }

  return 0;

 case 139:
  if (record->event.pressed) {
   rgb_matrix_sethsv(168, 255, 255);
  }

  return 0;

 case 137:
  if (record->event.pressed) {
   rgb_matrix_sethsv(128, 255, 255);
  }

  return 0;

 case 134:
  if (record->event.pressed) {
   rgb_matrix_sethsv(216, 255, 255);
  }

  return 0;

 case 130:
  if (record->event.pressed) {
   rgb_matrix_sethsv(40, 255, 255);
  }

  return 0;

 case 135:
  if (record->event.pressed) {
   rgb_matrix_sethsv(0, 0, 0);
  }

  return 0;

 case 131:
  if (record->event.pressed) {
   rgb_matrix_sethsv(128, 0, 255);
  }

  return 0;

 default:
  return 1;
 }
}
