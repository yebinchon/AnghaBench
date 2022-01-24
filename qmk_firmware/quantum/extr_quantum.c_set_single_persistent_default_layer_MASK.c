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
typedef  size_t uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/ * default_layer_songs ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

void FUNC3(uint8_t default_layer) {
#if defined(AUDIO_ENABLE) && defined(DEFAULT_LAYER_SONGS)
    PLAY_SONG(default_layer_songs[default_layer]);
#endif
    FUNC2(1U << default_layer);
    FUNC1(1U << default_layer);
}