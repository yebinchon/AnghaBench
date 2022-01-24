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
struct TYPE_2__ {scalar_t__ enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPTD8 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ audio_config ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  audio_initialized ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 scalar_t__ envelope_index ; 
 float* frequencies ; 
 int /*<<< orphan*/  gpt8cfg1 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int playing_note ; 
 scalar_t__ playing_notes ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int voices ; 
 int* volumes ; 

void FUNC7(float freq, int vol) {
    FUNC3("audio play note freq=%d vol=%d", (int)freq, vol);

    if (!audio_initialized) {
        FUNC2();
    }

    if (audio_config.enable && voices < 8) {
        // Cancel notes if notes are playing
        if (playing_notes) {
            FUNC6();
        }

        playing_note = true;

        envelope_index = 0;

        if (freq > 0) {
            frequencies[voices] = freq;
            volumes[voices]     = vol;
            voices++;
        }

        FUNC4(&GPTD8, &gpt8cfg1);
        FUNC5(&GPTD8, 2U);
        FUNC0();
        FUNC1();
    }
}