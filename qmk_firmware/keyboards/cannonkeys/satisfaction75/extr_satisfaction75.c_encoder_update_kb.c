
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ MEDIA_KEY_DELAY ;
 int change_encoder_mode (int) ;
 int encoder_value ;
 scalar_t__ handle_encoder_ccw () ;
 scalar_t__ handle_encoder_clockwise () ;
 scalar_t__ layer ;
 int queue_for_send ;
 int register_code16 (scalar_t__) ;
 scalar_t__ timer_elapsed (scalar_t__) ;
 scalar_t__ timer_read () ;
 int unregister_code16 (scalar_t__) ;

void encoder_update_kb(uint8_t index, bool clockwise) {
  encoder_value = (encoder_value + (clockwise ? 1 : -1)) % 64;
  queue_for_send = 1;
  if (index == 0) {
    if (layer == 0){
      uint16_t mapped_code = 0;
      if (clockwise) {
        mapped_code = handle_encoder_clockwise();
      } else {
        mapped_code = handle_encoder_ccw();
      }
      uint16_t held_keycode_timer = timer_read();
      if(mapped_code != 0){
        register_code16(mapped_code);
        while (timer_elapsed(held_keycode_timer) < MEDIA_KEY_DELAY){ }
        unregister_code16(mapped_code);
      }
    } else {
      if(clockwise){
        change_encoder_mode(0);
      } else {
        change_encoder_mode(1);
      }
    }
  }
}
