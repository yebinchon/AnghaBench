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
typedef  int /*<<< orphan*/  Rangstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6() {
	Rangstr rs = FUNC4 ("ping.board[\"pop\"][1][2][\"caca\"].panda");
	FUNC0 (&rs);
	do {
		FUNC2 (" - ");
		FUNC5 (&rs);
		FUNC2 (" Int (%d)", FUNC3 (&rs));
		FUNC2 ("\n");
	} while (FUNC1 (&rs));
	FUNC2 ("--\n");
}