
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;


 int KC_MEDIA_NEXT_TRACK ;
 int KC_MEDIA_PREV_TRACK ;
 int KC_PGDN ;
 int KC_PGUP ;
 int KC_VOLD ;
 int KC_VOLU ;
 scalar_t__ MEDIA_KEY_DELAY ;
 int layer ;
 int register_code (int ) ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;
 int unregister_code (int ) ;

void encoder_update_kb(uint8_t index, bool clockwise) {
  uint16_t mapped_code = 0;
  if (index == 0) {
    if (clockwise) {
        switch(layer){
            case 0:
            default:
                mapped_code = KC_VOLU;
                break;
            case 1:
                mapped_code = KC_MEDIA_NEXT_TRACK;
                break;
            case 2:
                mapped_code = KC_PGDN;
                break;
        }
    } else {
        switch(layer){
            case 0:
            default:
                mapped_code = KC_VOLD;
                break;
            case 1:
                mapped_code = KC_MEDIA_PREV_TRACK;
                break;
            case 2:
                mapped_code = KC_PGUP;
                break;
        }
    }
    uint16_t held_keycode_timer = timer_read();
    register_code(mapped_code);
    while (timer_elapsed(held_keycode_timer) < MEDIA_KEY_DELAY){ }
    unregister_code(mapped_code);
  }
}
