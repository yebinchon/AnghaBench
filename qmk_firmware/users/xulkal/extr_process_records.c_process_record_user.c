
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int pressed; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;





 int process_custom_tap_dance (int,TYPE_2__*) ;
 scalar_t__ process_record_encoder (int,TYPE_2__*) ;
 scalar_t__ process_record_keymap (int,TYPE_2__*) ;
 int reset_keyboard () ;
 int rgb_matrix_increase_flags () ;
 int rgb_reset () ;
 int timer_expired (int ,int) ;
 int timer_read () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record)
{
    static uint16_t reset_timer;


    if (!process_custom_tap_dance(keycode, record))
        return 0;


    switch (keycode)
    {
        case 129:




            return 0;
        case 130:
            {
                if (record->event.pressed)
                    reset_timer = timer_read() + 500;
                else if (timer_expired(timer_read(), reset_timer))
                    reset_keyboard();
            }
            return 0;







  }

  return process_record_encoder(keycode, record) && process_record_keymap(keycode, record);
}
