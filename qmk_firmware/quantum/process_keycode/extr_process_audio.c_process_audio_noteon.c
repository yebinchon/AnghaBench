
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int compute_freq_for_midi_note (int ) ;
 int play_note (int ,int) ;

void process_audio_noteon(uint8_t note) { play_note(compute_freq_for_midi_note(note), 0xF); }
