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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ note_period ; 
 int /*<<< orphan*/  note_playing ; 
 int /*<<< orphan*/  note_start ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2() {
    if (!note_playing) return;

    if (FUNC1(note_start) > note_period) {
        FUNC0();
    }
}