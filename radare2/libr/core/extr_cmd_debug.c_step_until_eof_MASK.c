#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_3__ {int /*<<< orphan*/  dbg; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(RCore *core) {
	int maxLoops = 200000;
	ut64 off, now = FUNC3 (core->dbg, "SP");
	FUNC2 (NULL, NULL);
	do {
		// XXX (HACK!)
		FUNC4 (core->dbg, 1);
		off = FUNC3 (core->dbg, "SP");
		// check breakpoint here
		if (--maxLoops < 0) {
			FUNC0 ("Step loop limit exceeded\n");
			break;
		}
	} while (off <= now);
	FUNC1 ();
	return true;
}