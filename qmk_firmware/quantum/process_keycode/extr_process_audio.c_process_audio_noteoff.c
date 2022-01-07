
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int compute_freq_for_midi_note (int ) ;
 int stop_note (int ) ;

void process_audio_noteoff(uint8_t note) { stop_note(compute_freq_for_midi_note(note)); }
