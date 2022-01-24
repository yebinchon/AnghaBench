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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int TRUE ; 
 int /*<<< orphan*/  exit_gui_mch_update ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(void)
{
    int working = TRUE;

    FUNC0(NULL, exit_gui_mch_update, &working);
    while ((working == TRUE) && !FUNC2())
    {
	FUNC1();
    }
}