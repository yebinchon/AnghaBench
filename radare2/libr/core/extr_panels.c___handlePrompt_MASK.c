#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  offset; } ;
struct TYPE_9__ {int n_panels; } ;
typedef  TYPE_1__ RPanels ;
typedef  int /*<<< orphan*/  RPanel ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CMD_DISASSEMBLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(RCore *core, RPanels *panels) {
	FUNC4 (core);
	int i;
	for (i = 0; i < panels->n_panels; i++) {
		RPanel *p = FUNC1 (panels, i);
		if (FUNC0 (p, PANEL_CMD_DISASSEMBLY)) {
			FUNC2 (core, p, core->offset);
			break;
		}
	}
	FUNC3 (core, false, false);
}