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
 int /*<<< orphan*/  DISABLE_AUDIO_COUNTER_1_ISR ; 
 int /*<<< orphan*/  DISABLE_AUDIO_COUNTER_1_OUTPUT ; 
 int /*<<< orphan*/  DISABLE_AUDIO_COUNTER_3_ISR ; 
 int /*<<< orphan*/  DISABLE_AUDIO_COUNTER_3_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  audio_initialized ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 float* frequencies ; 
 scalar_t__ frequency ; 
 scalar_t__ frequency_alt ; 
 int playing_note ; 
 scalar_t__ voice_place ; 
 scalar_t__ voices ; 
 scalar_t__ volume ; 
 scalar_t__* volumes ; 

void FUNC2(float freq) {
    FUNC1("audio stop note freq=%d", (int)freq);

    if (playing_note) {
        if (!audio_initialized) {
            FUNC0();
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
        if (voices < 0) voices = 0;
        if (voice_place >= voices) {
            voice_place = 0;
        }
        if (voices == 0) {
#ifdef CPIN_AUDIO
            DISABLE_AUDIO_COUNTER_3_ISR;
            DISABLE_AUDIO_COUNTER_3_OUTPUT;
#endif
#ifdef BPIN_AUDIO
            DISABLE_AUDIO_COUNTER_1_ISR;
            DISABLE_AUDIO_COUNTER_1_OUTPUT;
#endif
            frequency     = 0;
            frequency_alt = 0;
            volume        = 0;
            playing_note  = false;
        }
    }
}