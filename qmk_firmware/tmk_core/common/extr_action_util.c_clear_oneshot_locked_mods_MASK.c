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
 scalar_t__ oneshot_locked_mods ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void FUNC1(void) {
    if (oneshot_locked_mods) {
        oneshot_locked_mods = 0;
        FUNC0(oneshot_locked_mods);
    }
}