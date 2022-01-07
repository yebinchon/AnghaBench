
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ enable; } ;


 int DISABLE_AUDIO_COUNTER_3_ISR ;
 int ENABLE_AUDIO_COUNTER_3_ISR ;
 int ENABLE_AUDIO_COUNTER_3_OUTPUT ;
 float SAMPLE_RATE ;
 TYPE_1__ audio_config ;
 int audio_init () ;
 int audio_initialized ;
 size_t current_note ;
 float note_frequency ;
 float note_length ;
 scalar_t__ note_position ;
 scalar_t__ note_tempo ;
 int notes_count ;
 float*** notes_pointer ;
 int notes_repeat ;
 float notes_rest ;
 scalar_t__ place ;
 scalar_t__ playing_note ;
 int playing_notes ;
 int stop_all_notes () ;

void play_notes(float (*np)[][2], uint16_t n_count, bool n_repeat, float n_rest) {
    if (!audio_initialized) {
        audio_init();
    }

    if (audio_config.enable) {
        DISABLE_AUDIO_COUNTER_3_ISR;


        if (playing_note) stop_all_notes();

        playing_notes = 1;

        notes_pointer = np;
        notes_count = n_count;
        notes_repeat = n_repeat;
        notes_rest = n_rest;

        place = 0;
        current_note = 0;





        note_frequency = (*notes_pointer)[current_note][0];
        note_length = ((*notes_pointer)[current_note][1] / 4) * (((float)note_tempo) / 100);

        note_position = 0;




        ENABLE_AUDIO_COUNTER_3_ISR;
        ENABLE_AUDIO_COUNTER_3_OUTPUT;

    }
}
