
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
typedef int int8_t ;


 int KC_ESCAPE ;
 int KC_GRAVE ;
 int KC_LSHIFT ;
 int KC_RSHIFT ;






 int LFK_ESC_TILDE ;

 int MOD_BIT (int ) ;
 void add_key (int) ;
 int click (int,int) ;
 int click_hz ;
 int click_time ;
 int click_toggle ;
 int default_layer_set (unsigned long) ;
 void del_key (int) ;
 int eeconfig_update_default_layer (unsigned long) ;
 int get_mods () ;
 int layer_clear () ;
 scalar_t__ layer_state ;
 int send_keyboard_report () ;

void action_function(keyrecord_t *event, uint8_t id, uint8_t opt)
{



    if(id == LFK_ESC_TILDE){

        void (*method)(uint8_t) = (event->event.pressed) ? &add_key : &del_key;
        uint8_t shifted = get_mods() & (MOD_BIT(KC_LSHIFT) | MOD_BIT(KC_RSHIFT));
        if(layer_state == 0){
            method(shifted ? KC_GRAVE : KC_ESCAPE);
        }else{
            method(shifted ? KC_ESCAPE : KC_GRAVE);
        }
        send_keyboard_report();
    }else if(event->event.pressed){
        switch(id){
            case 128:

                eeconfig_update_default_layer(1UL << opt);
                default_layer_set(1UL << opt);
            case 134:

                layer_clear();
                break;
        }
    }
}
