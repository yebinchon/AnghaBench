
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t RGB_OLED_MENU ;
 int ** encoders ;
 int is_keyboard_master () ;
 int pgm_read_word (int *) ;
 size_t rgb_encoder_state ;
 int rgb_functions () ;
 int stub1 () ;
 int tap_code16 (int ) ;

void encoder_update_user(uint8_t index, bool clockwise)
{
    if (!is_keyboard_master())
        return;






        tap_code16(pgm_read_word(&encoders[index][clockwise]));
}
