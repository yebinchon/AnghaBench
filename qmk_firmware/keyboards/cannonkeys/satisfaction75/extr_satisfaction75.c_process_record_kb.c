
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;



 int ENC_MODE_CLOCK_SET ;

 int MACRO00 ;
 int MACRO15 ;
 int MEDIA_KEY_DELAY ;

 int _NUM_OLED_MODES ;
 int clock_set_mode ;
 int draw_ui () ;
 int dynamic_keymap_macro_send (int) ;
 int encoder_mode ;
 int handle_encoder_press () ;
 int oled_mode ;
 int post_encoder_mode_change () ;
 int pre_encoder_mode_change () ;
 int previous_encoder_mode ;
 int process_record_user (int,TYPE_2__*) ;
 int queue_for_send ;
 int register_code16 (int) ;
 int timer_elapsed (int) ;
 int timer_read () ;
 int unregister_code16 (int) ;

bool process_record_kb(uint16_t keycode, keyrecord_t *record) {
  queue_for_send = 1;
  switch (keycode) {
    case 128:
      if(!clock_set_mode){
        if (record->event.pressed) {
          oled_mode = (oled_mode + 1) % _NUM_OLED_MODES;
          draw_ui();
        }
      }
      return 0;
    case 130:
      if (record->event.pressed) {
        if(clock_set_mode){
          pre_encoder_mode_change();
          clock_set_mode = 0;
          encoder_mode = previous_encoder_mode;
          post_encoder_mode_change();

        }else{
          previous_encoder_mode = encoder_mode;
          pre_encoder_mode_change();
          clock_set_mode = 1;
          encoder_mode = ENC_MODE_CLOCK_SET;
          post_encoder_mode_change();
        }
      }
      return 0;
    case 129:
      if (record->event.pressed) {
        uint16_t mapped_code = handle_encoder_press();
        uint16_t held_keycode_timer = timer_read();
        if(mapped_code != 0){
          register_code16(mapped_code);
          while (timer_elapsed(held_keycode_timer) < MEDIA_KEY_DELAY){ }
          unregister_code16(mapped_code);
        }
      } else {

      }
      return 0;
    default:
      break;
  }
  return process_record_user(keycode, record);
}
