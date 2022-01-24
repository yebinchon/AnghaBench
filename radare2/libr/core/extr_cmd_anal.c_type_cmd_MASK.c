#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_12__ {int /*<<< orphan*/  esil; } ;
struct TYPE_11__ {int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  offset; TYPE_9__* anal; } ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  help_msg_aft ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(RCore *core, const char *input) {
	RAnalFunction *fcn = FUNC2 (core->anal, core->offset, -1);
	if (!fcn && *input != '?') {
		FUNC0 ("cant find function here\n");
		return;
	}
	ut64 seek;
	FUNC4 (NULL, NULL);
	switch (*input) {
	case '\0': // "aft"
		seek = core->offset;
		FUNC1 (core->anal->esil, fcn? fcn->addr: core->offset);
		FUNC5 (core, fcn);
		FUNC7 (core, seek, true);
		break;
	case '?':
		FUNC6 (core, help_msg_aft);
		break;
	}
	FUNC3 ();
}