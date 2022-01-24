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
struct TYPE_3__ {int /*<<< orphan*/  anal; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(RCore *core, RAnalFunction *fcn, const char *name) {
	bool retval = false;
	RList *xrefs = FUNC2 (core->anal, fcn);
	if (xrefs) {
		retval = FUNC1 (core->anal, name, xrefs);
		FUNC0 (xrefs);
	}
	return retval;
}