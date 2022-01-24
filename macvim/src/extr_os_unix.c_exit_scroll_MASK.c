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
 scalar_t__ Rows ; 
 scalar_t__ info_message ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ msg_didout ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ newline_on_exit ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ silent_mode ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7()
{
    if (silent_mode)
	return;
    if (newline_on_exit || msg_didout)
    {
	if (FUNC3())
	{
	    if (info_message)
		FUNC1("\n");
	    else
		FUNC0("\r\n");
	}
	else
	    FUNC4('\n');
    }
    else
    {
	FUNC5();		/* get original colors back */
	FUNC2();		/* clear the rest of the display */
	FUNC6((int)Rows - 1, 0);	/* may have moved the cursor */
    }
}