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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ M0110_ERROR ; 
 scalar_t__ M0110_NULL ; 
 scalar_t__ debug_enable ; 
 int is_modified ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

uint8_t FUNC5(void)
{
    uint8_t key;

    is_modified = false;
    key = FUNC0();

    if (key == M0110_NULL) {
        return 0;
    } else if (key == M0110_ERROR) {
        return 0;
    } else {
        is_modified = true;
        FUNC4(key);
    }

    if (debug_enable) {
        FUNC3("["); FUNC2(key); FUNC3("]\n");
    }
    
    FUNC1();
    return 1;
}