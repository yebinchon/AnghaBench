
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; scalar_t__ enable; } ;


 int PLAY_SONG (int ) ;
 TYPE_1__ audio_config ;
 int audio_off_song ;
 int eeconfig_update_audio (int ) ;
 int stop_all_notes () ;
 int wait_ms (int) ;

void audio_off(void) {
    PLAY_SONG(audio_off_song);
    wait_ms(100);
    stop_all_notes();
    audio_config.enable = 0;
    eeconfig_update_audio(audio_config.raw);
}
