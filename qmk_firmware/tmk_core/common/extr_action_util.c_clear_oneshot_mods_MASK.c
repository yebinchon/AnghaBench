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
 scalar_t__ oneshot_mods ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ oneshot_time ; 

void FUNC1(void) {
    if (oneshot_mods) {
        oneshot_mods = 0;
#    if (defined(ONESHOT_TIMEOUT) && (ONESHOT_TIMEOUT > 0))
        oneshot_time = 0;
#    endif
        FUNC0(oneshot_mods);
    }
}