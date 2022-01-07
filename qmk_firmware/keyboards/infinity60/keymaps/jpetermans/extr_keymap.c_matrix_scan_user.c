
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int msg_t ;


 int ALL ;
 int DISPLAY_PAGE ;
 int GAME ;



 int SET_FULL_ROW ;
 int TIME_IMMEDIATE ;
 scalar_t__ backlight_status_global ;
 int biton32 (scalar_t__) ;
 int chMBPost (int *,int,int ) ;
 int chThdSleepMilliseconds (int) ;
 scalar_t__ layer_state ;
 scalar_t__ led_layer_state ;
 int led_mailbox ;
 int led_mode_global ;
 int max_pages ;

void matrix_scan_user(void) {
  uint8_t page;
  uint8_t led_pin_byte;
  msg_t msg;

  if (backlight_status_global == 0) {
    return;
  }

  if (led_layer_state != layer_state && led_mode_global != GAME && led_mode_global != ALL) {


    switch(led_mode_global) {
      case 130:
        page = biton32(layer_state) > max_pages ? 7 : biton32(layer_state);
        msg=(page << 8) | DISPLAY_PAGE;
        chMBPost(&led_mailbox, msg, TIME_IMMEDIATE);
        chThdSleepMilliseconds(500);


      case 128:
        led_pin_byte = layer_state & 0xFF;
        msg=(7 << 8) | DISPLAY_PAGE;
        chMBPost(&led_mailbox, msg, TIME_IMMEDIATE);
        msg=(1 << 16) | (led_pin_byte << 8) | SET_FULL_ROW;
        chMBPost(&led_mailbox, msg, TIME_IMMEDIATE);
        break;

      case 129:
        page = biton32(layer_state) > max_pages ? 7 : biton32(layer_state);
        msg=(page << 8) | DISPLAY_PAGE;
        chMBPost(&led_mailbox, msg, TIME_IMMEDIATE);
        break;
      }
  led_layer_state = layer_state;
  }
}
