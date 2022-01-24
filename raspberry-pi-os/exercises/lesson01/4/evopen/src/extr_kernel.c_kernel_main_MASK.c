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
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(unsigned long id) {
    if(id == 0) {
        FUNC0();
    }
    FUNC3("Hello from processor ");
    FUNC2(id + 48);
    FUNC3(".\r\n");

    while (1) {
        FUNC2(FUNC1());
    }
}