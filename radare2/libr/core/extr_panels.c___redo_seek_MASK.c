#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  io; int /*<<< orphan*/  panels; } ;
struct TYPE_7__ {int /*<<< orphan*/  off; } ;
typedef  int /*<<< orphan*/  RPanel ;
typedef  TYPE_1__ RIOUndos ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CMD_DISASSEMBLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(RCore *core) {
	RPanel *cur = FUNC1 (core->panels);
	if (!FUNC0 (cur, PANEL_CMD_DISASSEMBLY)) {
		return;
	}
	RIOUndos *undo = FUNC4 (core->io);
	if (undo) {
		FUNC3 (core, undo->off);
		FUNC2 (core, cur, core->offset);
	}
}