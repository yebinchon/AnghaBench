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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  POTATO_CONSOLE_STATUS ; 
 int POTATO_CONSOLE_STATUS_RX_EMPTY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void) {
    uint64_t val;

    val = FUNC0(POTATO_CONSOLE_STATUS);

    if (val & POTATO_CONSOLE_STATUS_RX_EMPTY) {
        return 1;
    }

    return 0;
}