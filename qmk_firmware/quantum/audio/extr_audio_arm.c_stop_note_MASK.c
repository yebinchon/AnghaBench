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

/* Variables and functions */
 int /*<<< orphan*/  GPTD8 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  audio_initialized ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 float* frequencies ; 
 scalar_t__ frequency ; 
 scalar_t__ frequency_alt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int playing_note ; 
 scalar_t__ voice_place ; 
 scalar_t__ voices ; 
 scalar_t__ volume ; 
 scalar_t__* volumes ; 

void FUNC5(float freq) {
    FUNC3("audio stop note freq=%d", (int)freq);

    if (playing_note) {
        if (!audio_initialized) {
            FUNC2();
        }
        for (int i = 7; i >= 0; i--) {
            if (frequencies[i] == freq) {
                frequencies[i] = 0;
                volumes[i]     = 0;
                for (int j = i; (j < 7); j++) {
                    frequencies[j]     = frequencies[j + 1];
                    frequencies[j + 1] = 0;
                    volumes[j]         = volumes[j + 1];
                    volumes[j + 1]     = 0;
                }
                break;
            }
        }
        voices--;
        if (voices < 0) {
            voices = 0;
        }
        if (voice_place >= voices) {
            voice_place = 0;
        }
        if (voices == 0) {
            FUNC0();
            FUNC1();
            FUNC4(&GPTD8);
            frequency     = 0;
            frequency_alt = 0;
            volume        = 0;
            playing_note  = false;
        }
    }
}