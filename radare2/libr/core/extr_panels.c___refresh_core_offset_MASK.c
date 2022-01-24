#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  offset; int /*<<< orphan*/ * panels; } ;
struct TYPE_8__ {TYPE_1__* model; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  RPanels ;
typedef  TYPE_2__ RPanel ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CMD_DISASSEMBLY ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2 (RCore *core) {
	RPanels *panels = core->panels;
	RPanel *cur = FUNC1 (panels);
	if (FUNC0 (cur, PANEL_CMD_DISASSEMBLY)) {
		core->offset = cur->model->addr;
	}
}