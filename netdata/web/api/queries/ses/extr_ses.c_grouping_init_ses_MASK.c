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
 int /*<<< orphan*/  CONFIG_SECTION_WEB ; 
 long long FUNC0 (int /*<<< orphan*/ ,char*,long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long long) ; 
 size_t max_window_size ; 

void FUNC2(void) {
    long long ret = FUNC0(CONFIG_SECTION_WEB, "ses max window", (long long)max_window_size);
    if(ret <= 1) {
        FUNC1(CONFIG_SECTION_WEB, "ses max window", (long long)max_window_size);
    }
    else {
        max_window_size = (size_t) ret;
    }
}