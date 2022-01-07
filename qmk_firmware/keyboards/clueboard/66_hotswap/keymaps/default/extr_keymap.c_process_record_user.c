
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int PLAY_SONG (int ) ;
 int song_basketcase ;
 int song_coin ;
 int song_doe_a_deer ;
 int song_ode_to_joy ;
 int song_one_up ;
 int song_rock_a_bye_baby ;
 int song_scale ;
 int song_sonic_ring ;
 int song_zelda_puzzle ;
 int stop_all_notes () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
    }
    return 1;
}
