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
struct TYPE_3__ {int break_loop; int /*<<< orphan*/  dbg; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(RCore *core, ut64 addr) {
	ut64 off = FUNC5 (core->dbg, "PC");
	if (!off) {
		FUNC0 ("Cannot 'drn PC'\n");
		return false;
	}
	if (!addr) {
		FUNC0 ("Cannot continue until address 0\n");
		return false;
	}
	FUNC2 (NULL, NULL);
	do {
		if (FUNC3 ()) {
			core->break_loop = true;
			break;
		}
		if (FUNC4 (core->dbg)) {
			core->break_loop = true;
			break;
		}
		FUNC6 (core->dbg, 1);
		off = FUNC5 (core->dbg, "PC");
		// check breakpoint here
	} while (off != addr);
	FUNC1 ();
	return true;
}