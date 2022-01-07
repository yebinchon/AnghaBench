
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enable; } ;


 int DISABLE_AUDIO_COUNTER_3_ISR ;
 int ENABLE_AUDIO_COUNTER_3_ISR ;
 int ENABLE_AUDIO_COUNTER_3_OUTPUT ;
 float SAMPLE_RATE ;
 TYPE_1__ audio_config ;
 int audio_init () ;
 int audio_initialized ;
 scalar_t__ envelope_index ;
 float* frequencies ;
 int playing_note ;
 scalar_t__ playing_notes ;
 int stop_all_notes () ;
 int voices ;
 int* volumes ;

void play_note(float freq, int vol) {
    if (!audio_initialized) {
        audio_init();
    }

    if (audio_config.enable && voices < 8) {
        DISABLE_AUDIO_COUNTER_3_ISR;


        if (playing_notes) stop_all_notes();

        playing_note = 1;

        envelope_index = 0;




        if (freq > 0) {
            frequencies[voices] = freq;
            volumes[voices] = vol;
            voices++;
        }




        ENABLE_AUDIO_COUNTER_3_ISR;
        ENABLE_AUDIO_COUNTER_3_OUTPUT;

    }
}
