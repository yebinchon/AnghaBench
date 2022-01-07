
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__* SCALE ;
 int compute_freq_for_midi_note (scalar_t__) ;
 scalar_t__ last_muse_note ;
 size_t muse_clock_pulse () ;
 int muse_counter ;
 scalar_t__ muse_mode ;
 scalar_t__ muse_offset ;
 int muse_tempo ;
 int play_note (int ,int) ;
 int stop_all_notes () ;
 int stop_note (int ) ;

void matrix_scan_user(void) {
}
