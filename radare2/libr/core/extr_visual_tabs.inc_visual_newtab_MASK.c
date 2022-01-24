#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int tab; int /*<<< orphan*/  tabs; } ;
struct TYPE_7__ {TYPE_1__ visual; } ;
typedef  int /*<<< orphan*/  RListFree ;
typedef  int /*<<< orphan*/  RCoreVisualTab ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 scalar_t__ r_core_visual_tab_free ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static RCoreVisualTab *FUNC4 (RCore *core) {
	if (!core->visual.tabs) {
		core->visual.tabs = FUNC2 ((RListFree)r_core_visual_tab_free);
		if (!core->visual.tabs) {
			return NULL;
		}
		core->visual.tab = -1;
		FUNC4 (core);
	}
	core->visual.tab++;
	RCoreVisualTab *tab = FUNC0 (core);
	if (tab) {
		FUNC1 (core->visual.tabs, tab);
		FUNC3 (core, tab);
	}
	return tab;
}