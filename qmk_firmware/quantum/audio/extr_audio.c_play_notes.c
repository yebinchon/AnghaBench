
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ enable; } ;


 int DISABLE_AUDIO_COUNTER_1_ISR ;
 int DISABLE_AUDIO_COUNTER_3_ISR ;
 int ENABLE_AUDIO_COUNTER_1_ISR ;
 int ENABLE_AUDIO_COUNTER_1_OUTPUT ;
 int ENABLE_AUDIO_COUNTER_3_ISR ;
 int ENABLE_AUDIO_COUNTER_3_OUTPUT ;
 TYPE_1__ audio_config ;
 int audio_init () ;
 int audio_initialized ;
 size_t current_note ;
 int note_frequency ;
 int note_length ;
 scalar_t__ note_position ;
 scalar_t__ note_tempo ;
 int notes_count ;
 int*** notes_pointer ;
 int notes_repeat ;
 scalar_t__ place ;
 scalar_t__ playing_note ;
 int playing_notes ;
 int stop_all_notes () ;

void play_notes(float (*np)[][2], uint16_t n_count, bool n_repeat) {
    if (!audio_initialized) {
        audio_init();
    }

    if (audio_config.enable) {
        if (playing_note) stop_all_notes();

        playing_notes = 1;

        notes_pointer = np;
        notes_count = n_count;
        notes_repeat = n_repeat;

        place = 0;
        current_note = 0;

        note_frequency = (*notes_pointer)[current_note][0];
        note_length = ((*notes_pointer)[current_note][1] / 4) * (((float)note_tempo) / 100);
        note_position = 0;
    }
}
