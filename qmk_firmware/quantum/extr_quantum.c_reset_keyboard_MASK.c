#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  goodbye_song ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void FUNC11(void) {
    FUNC2();
#if defined(MIDI_ENABLE) && defined(MIDI_BASIC)
    process_midi_all_notes_off();
#endif
#ifdef AUDIO_ENABLE
#    ifndef NO_MUSIC_MODE
    music_all_notes_off();
#    endif
    uint16_t timer_start = timer_read();
    PLAY_SONG(goodbye_song);
    shutdown_user();
    while (timer_elapsed(timer_start) < 250) wait_ms(1);
    stop_all_notes();
#else
    FUNC6();
    FUNC10(250);
#endif
#ifdef HAPTIC_ENABLE
    haptic_shutdown();
#endif
// this is also done later in bootloader.c - not sure if it's neccesary here
#ifdef BOOTLOADER_CATERINA
    *(uint16_t *)0x0800 = 0x7777;  // these two are a-star-specific
#endif
    FUNC1();
}