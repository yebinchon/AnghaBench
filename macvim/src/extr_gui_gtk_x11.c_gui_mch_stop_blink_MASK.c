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
 scalar_t__ BLINK_NONE ; 
 scalar_t__ BLINK_OFF ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ blink_state ; 
 scalar_t__ blink_timer ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{
    if (blink_timer)
    {
	FUNC0(blink_timer);
	blink_timer = 0;
    }
    if (blink_state == BLINK_OFF)
	FUNC1(TRUE, FALSE);
    blink_state = BLINK_NONE;
}