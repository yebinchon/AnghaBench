
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; int raw; } ;


 int PLAY_SONG (int ) ;
 TYPE_1__ audio_config ;
 int audio_on_song ;
 int audio_on_user () ;
 int eeconfig_update_audio (int ) ;

void audio_on(void) {
    audio_config.enable = 1;
    eeconfig_update_audio(audio_config.raw);
    audio_on_user();
    PLAY_SONG(audio_on_song);
}
