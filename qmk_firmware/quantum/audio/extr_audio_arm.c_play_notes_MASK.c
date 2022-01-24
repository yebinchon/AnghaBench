#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {scalar_t__ enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPTD8 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ audio_config ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  audio_initialized ; 
 size_t current_note ; 
 int /*<<< orphan*/  gpt8cfg1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int note_frequency ; 
 int note_length ; 
 scalar_t__ note_position ; 
 scalar_t__ note_tempo ; 
 int /*<<< orphan*/  notes_count ; 
 int*** notes_pointer ; 
 int notes_repeat ; 
 scalar_t__ place ; 
 scalar_t__ playing_note ; 
 int playing_notes ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(float (*np)[][2], uint16_t n_count, bool n_repeat) {
    if (!audio_initialized) {
        FUNC2();
    }

    if (audio_config.enable) {
        // Cancel note if a note is playing
        if (playing_note) {
            FUNC5();
        }

        playing_notes = true;

        notes_pointer = np;
        notes_count   = n_count;
        notes_repeat  = n_repeat;

        place        = 0;
        current_note = 0;

        note_frequency = (*notes_pointer)[current_note][0];
        note_length    = ((*notes_pointer)[current_note][1] / 4) * (((float)note_tempo) / 100);
        note_position  = 0;

        FUNC3(&GPTD8, &gpt8cfg1);
        FUNC4(&GPTD8, 2U);
        FUNC0();
        FUNC1();
    }
}