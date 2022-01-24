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
 int NEXT_KBD_IN_BIT ; 
 int NEXT_KBD_IN_DDR ; 
 int NEXT_KBD_IN_PORT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(void) {
    FUNC0();
    NEXT_KBD_IN_DDR &= ~(1 << NEXT_KBD_IN_BIT);  // KBD_IN  to input
    NEXT_KBD_IN_PORT |= (1 << NEXT_KBD_IN_BIT);  // KBD_IN  pull up

    FUNC1(5);
    FUNC2(8);

    FUNC1(5);
    FUNC2(8);
}