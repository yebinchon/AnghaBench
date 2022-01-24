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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

uint8_t FUNC3(void) {
    // Command may take 25ms/20ms at most([5]p.46, [3]p.21)
    uint8_t retry = 25;
    while (retry-- && !FUNC2()) {
        FUNC0(1);
    }
    return FUNC1();
}