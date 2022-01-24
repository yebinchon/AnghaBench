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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(int offset) {
    FUNC0();
    uint8_t rdac = FUNC1() + offset;
    if (rdac > 63) { // protects from under and overflows
        if (offset > 0)
            FUNC2(63);
        else
            FUNC2(0);
    } else {
        FUNC2(rdac);
    }
}