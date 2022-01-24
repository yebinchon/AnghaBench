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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_timer ; 
 int runonce ; 
 int /*<<< orphan*/  song_one_up ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void) {
  if (runonce && FUNC1(my_timer) > 500) {
    runonce = false;
#ifdef AUDIO_ENABLE
    PLAY_SONG(song_one_up);
#endif
  }
}