#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_8__ {scalar_t__ offset; } ;
typedef  int /*<<< orphan*/  RPanel ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CMD_DISASSEMBLY ; 
 scalar_t__ UT64_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 

void FUNC6(RCore *core, RPanel *panel, ut64 tmp) {
	if (tmp != UT64_MAX) {
		core->offset = tmp;
	}
	int key = FUNC4(core, "xrefs:x refs:X ");
	switch (key) {
	case 'x':
		(void)FUNC5(core, true, false);
		break;
	case 'X':
		(void)FUNC5(core, false, false);
		break;
	default:
		break;
	}
	if (FUNC0 (panel, PANEL_CMD_DISASSEMBLY)) {
		FUNC2 (core, panel, core->offset);
		FUNC3 (core, false, false);
		return;
	}
	FUNC1 (core, PANEL_CMD_DISASSEMBLY, core->offset);
}