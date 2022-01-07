
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_2__ {scalar_t__ enable; int raw; } ;
typedef int INIT_AUDIO_COUNTER_3 ;
typedef int INIT_AUDIO_COUNTER_1 ;
typedef int CPIN_SET_DIRECTION ;
typedef int BPIN_SET_DIRECTION ;


 int CPU_PRESCALER ;
 int CS10 ;
 int CS11 ;
 int CS12 ;
 int CS30 ;
 int CS31 ;
 int CS32 ;
 scalar_t__ F_CPU ;
 int PLAY_SONG (int ) ;
 void* TIMER_1_DUTY_CYCLE ;
 void* TIMER_1_PERIOD ;
 void* TIMER_3_DUTY_CYCLE ;
 void* TIMER_3_PERIOD ;
 int WGM12 ;
 int WGM13 ;
 int WGM32 ;
 int WGM33 ;
 TYPE_1__ audio_config ;
 int audio_initialized ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_audio () ;
 float note_timbre ;
 int startup_song ;

void audio_init() {

    if (!eeconfig_is_enabled()) {
        eeconfig_init();
    }
    audio_config.raw = eeconfig_read_audio();

    if (!audio_initialized) {
        audio_initialized = 1;
    }

    if (audio_config.enable) {
        PLAY_SONG(startup_song);
    }
}
