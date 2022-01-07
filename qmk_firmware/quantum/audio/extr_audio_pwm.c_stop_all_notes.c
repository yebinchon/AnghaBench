
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DISABLE_AUDIO_COUNTER_3_ISR ;
 int DISABLE_AUDIO_COUNTER_3_OUTPUT ;
 int audio_init () ;
 int audio_initialized ;
 scalar_t__* frequencies ;
 scalar_t__ frequency ;
 int playing_note ;
 int playing_notes ;
 scalar_t__ voices ;
 scalar_t__ volume ;
 scalar_t__* volumes ;

void stop_all_notes() {
    if (!audio_initialized) {
        audio_init();
    }
    voices = 0;



    DISABLE_AUDIO_COUNTER_3_ISR;
    DISABLE_AUDIO_COUNTER_3_OUTPUT;


    playing_notes = 0;
    playing_note = 0;
    frequency = 0;
    volume = 0;

    for (uint8_t i = 0; i < 8; i++) {
        frequencies[i] = 0;
        volumes[i] = 0;
    }
}
