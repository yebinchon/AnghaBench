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
typedef  int /*<<< orphan*/  OsiTaskHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1 (OsiTaskHandle *pxTask, signed char *pcTaskName)
{
#ifdef DEBUG
    // Break into the debugger
    __asm volatile ("bkpt #0  \n");
#endif

    FUNC0("Stack overflow!");
}