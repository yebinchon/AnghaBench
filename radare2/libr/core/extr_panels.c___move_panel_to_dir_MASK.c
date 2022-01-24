#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * panels; } ;
typedef  int /*<<< orphan*/  RPanels ;
typedef  int /*<<< orphan*/  RPanel ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int FUNC6 (TYPE_1__*,char*) ; 
 int FUNC7 (int) ; 

void FUNC8(RCore *core, RPanel *panel, int src) {
	RPanels *panels = core->panels;
	FUNC0 (panels, panel);
	int key = FUNC6 (core, "Move the current panel to direction (h/l): ");
	key = FUNC7 (key);
	FUNC5 (core, false, true);
	switch (key) {
	case 'h':
		FUNC2 (core, panel, src);
		break;
	case 'l':
		FUNC3 (core, panel, src);
		break;
	case 'k':
		FUNC4 (core, panel, src);
		break;
	case 'j':
		FUNC1 (core, panel, src);
		break;
	default:
		break;
	}
}