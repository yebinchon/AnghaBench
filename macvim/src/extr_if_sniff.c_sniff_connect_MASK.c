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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__* init_cmds ; 
 scalar_t__ sniff_connected ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4()
{
    if (sniff_connected)
	return;
    if (FUNC0())
	FUNC2(FUNC1("E276: Error connecting to SNiFF+"));
    else
    {
	int i;

	for (i = 0; init_cmds[i]; i++)
	    FUNC3(init_cmds[i]);
    }
}