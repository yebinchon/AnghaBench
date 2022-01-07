
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int msg_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
 int ALL ;
 int DISPLAY_PAGE ;
 int GAME ;
 int MODE_FLASH ;
 int MODE_PAGE ;
 int MODE_SINGLE ;
 int STEP_BRIGHTNESS ;
 int TIME_IMMEDIATE ;
 int TOGGLE_ALL ;
 int TOGGLE_BACKLIGHT ;
 int backlight_status_global ;
 int chMBPost (int *,int,int ) ;
 int led_mailbox ;
 int led_mode_global ;

void action_function(keyrecord_t *record, uint8_t id, uint8_t opt) {
  msg_t msg;

  switch(id) {
    case 135:
      if(record->event.pressed) {
        led_mode_global = led_mode_global == ALL ? MODE_SINGLE : ALL;
        msg=TOGGLE_ALL;
        chMBPost(&led_mailbox, msg, TIME_IMMEDIATE);
      }
      break;

    case 134:
      if(record->event.pressed) {
        backlight_status_global ^= 1;
        msg=(backlight_status_global << 8) | TOGGLE_BACKLIGHT;
        chMBPost(&led_mailbox, msg, TIME_IMMEDIATE);
      }
      break;

    case 130:
      if(record->event.pressed) {
        led_mode_global = led_mode_global == GAME ? MODE_SINGLE : GAME;

        msg=(4 << 8) | DISPLAY_PAGE;
        chMBPost(&led_mailbox, msg, TIME_IMMEDIATE);
      }
      break;

    case 133:
      if(record->event.pressed) {
        msg=(1 << 8) | STEP_BRIGHTNESS;
        chMBPost(&led_mailbox, msg, TIME_IMMEDIATE);
      }
      break;

    case 132:
      if(record->event.pressed) {
        msg=(0 << 8) | STEP_BRIGHTNESS;
        chMBPost(&led_mailbox, msg, TIME_IMMEDIATE);
      }
      break;


    case 128:
      led_mode_global = MODE_SINGLE;
      break;
    case 129:
      led_mode_global = MODE_PAGE;
      break;
    case 131:
      led_mode_global = MODE_FLASH;
      break;

  }
}
