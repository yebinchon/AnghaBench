
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {scalar_t__ pressed; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int PLAY_SONG (float**) ;
 int UC_BSD ;
 int UC_LNX ;
 int UC_OSX ;
 int UC_WIN ;
 int UC_WINC ;







 float** UNICODE_SONG_BSD ;
 float** UNICODE_SONG_LNX ;
 float** UNICODE_SONG_OSX ;
 float** UNICODE_SONG_WIN ;
 float** UNICODE_SONG_WINC ;
 int cycle_unicode_input_mode (int) ;
 int process_ucis (int,TYPE_2__*) ;
 int process_unicode (int,TYPE_2__*) ;
 int process_unicodemap (int,TYPE_2__*) ;
 int set_unicode_input_mode (int ) ;

bool process_unicode_common(uint16_t keycode, keyrecord_t *record) {
    if (record->event.pressed) {
        switch (keycode) {
            case 133:
                cycle_unicode_input_mode(+1);
                break;
            case 130:
                cycle_unicode_input_mode(-1);
                break;

            case 131:
                set_unicode_input_mode(UC_OSX);




                break;
            case 132:
                set_unicode_input_mode(UC_LNX);




                break;
            case 129:
                set_unicode_input_mode(UC_WIN);




                break;
            case 134:
                set_unicode_input_mode(UC_BSD);




                break;
            case 128:
                set_unicode_input_mode(UC_WINC);




                break;
        }
    }







    return 1;

}
