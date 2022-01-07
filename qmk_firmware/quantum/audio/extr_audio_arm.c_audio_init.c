
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dacsample_t ;
struct TYPE_2__ {int enable; int clicky_enable; int raw; } ;


 int DACD1 ;
 int DACD2 ;
 int DAC_BUFFER_SIZE ;
 int GPIOA ;
 int PAL_MODE_INPUT_ANALOG ;
 int PLAY_SONG (int ) ;
 int START_CHANNEL_1 () ;
 int START_CHANNEL_2 () ;
 TYPE_1__ audio_config ;
 int audio_initialized ;
 int dac1cfg1 ;
 int dac1cfg2 ;
 int dacStart (int *,int *) ;
 int dacStartConversion (int *,int *,int *,int ) ;
 scalar_t__ dac_buffer ;
 scalar_t__ dac_buffer_2 ;
 int dacgrpcfg1 ;
 int dacgrpcfg2 ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_audio () ;
 int palSetPadMode (int ,int,int ) ;
 int startup_song ;
 int stop_all_notes () ;

void audio_init() {
    if (audio_initialized) {
        return;
    }
    audio_config.enable = 1;
    palSetPadMode(GPIOA, 4, PAL_MODE_INPUT_ANALOG);
    palSetPadMode(GPIOA, 5, PAL_MODE_INPUT_ANALOG);
    dacStart(&DACD1, &dac1cfg1);
    dacStart(&DACD2, &dac1cfg2);




    START_CHANNEL_1();
    START_CHANNEL_2();




    dacStartConversion(&DACD1, &dacgrpcfg1, (dacsample_t *)dac_buffer, DAC_BUFFER_SIZE);
    dacStartConversion(&DACD2, &dacgrpcfg2, (dacsample_t *)dac_buffer_2, DAC_BUFFER_SIZE);

    audio_initialized = 1;

    if (audio_config.enable) {
        PLAY_SONG(startup_song);
    } else {
        stop_all_notes();
    }
}
