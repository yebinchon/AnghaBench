
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 scalar_t__ AU_OFF ;
 scalar_t__ AU_ON ;
 scalar_t__ AU_TOG ;
 scalar_t__ MUV_DE ;
 scalar_t__ MUV_IN ;
 int PLAY_SONG (int ) ;
 int audio_off () ;
 int audio_on () ;
 scalar_t__ is_audio_on () ;
 int voice_change_song ;
 int voice_deiterate () ;
 int voice_iterate () ;

bool process_audio(uint16_t keycode, keyrecord_t *record) {
    if (keycode == AU_ON && record->event.pressed) {
        audio_on();
        return 0;
    }

    if (keycode == AU_OFF && record->event.pressed) {
        audio_off();
        return 0;
    }

    if (keycode == AU_TOG && record->event.pressed) {
        if (is_audio_on()) {
            audio_off();
        } else {
            audio_on();
        }
        return 0;
    }

    if (keycode == MUV_IN && record->event.pressed) {
        voice_iterate();
        PLAY_SONG(voice_change_song);
        return 0;
    }

    if (keycode == MUV_DE && record->event.pressed) {
        voice_deiterate();
        PLAY_SONG(voice_change_song);
        return 0;
    }

    return 1;
}
