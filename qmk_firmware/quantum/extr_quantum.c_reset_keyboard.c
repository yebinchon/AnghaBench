
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int PLAY_SONG (int ) ;
 int bootloader_jump () ;
 int clear_keyboard () ;
 int goodbye_song ;
 int haptic_shutdown () ;
 int music_all_notes_off () ;
 int process_midi_all_notes_off () ;
 int shutdown_user () ;
 int stop_all_notes () ;
 int timer_elapsed (int) ;
 int timer_read () ;
 int wait_ms (int) ;

void reset_keyboard(void) {
    clear_keyboard();
    shutdown_user();
    wait_ms(250);
    bootloader_jump();
}
