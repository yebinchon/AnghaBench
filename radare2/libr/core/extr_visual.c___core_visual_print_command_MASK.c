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
struct TYPE_7__ {int /*<<< orphan*/  tab; scalar_t__ tabs; } ;
struct TYPE_9__ {int /*<<< orphan*/  stkcmd; int /*<<< orphan*/  config; TYPE_1__ visual; } ;
struct TYPE_8__ {char* name; } ;
typedef  TYPE_2__ RCoreVisualTab ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 size_t PIDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char const** printfmtColumns ; 
 char const** printfmtSingle ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static const char *FUNC5(RCore *core) {
	if (core->visual.tabs) {
		RCoreVisualTab *tab = FUNC2 (core->visual.tabs, core->visual.tab);
		if (tab && tab->name[0] == ':') {
			return tab->name + 1;
		}
	}
	if (FUNC1 (core->config, "scr.dumpcols")) {
		FUNC0 (core->stkcmd);
		core->stkcmd = FUNC3 (FUNC4 (core));
		return printfmtColumns[PIDX];
	}
	return printfmtSingle[PIDX];
}