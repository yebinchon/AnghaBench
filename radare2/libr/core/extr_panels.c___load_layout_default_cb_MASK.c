#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* panels_menu; } ;
struct TYPE_10__ {TYPE_5__* panels; } ;
struct TYPE_9__ {int depth; } ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_MODE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 

int FUNC5(void *user) {
	RCore *core = (RCore *)user;
	FUNC1 (core, core->panels);
	FUNC0 (core);
	FUNC2 (core->panels);
	FUNC4 (core, false, false);
	core->panels->panels_menu->depth = 1;
	FUNC3 (core, PANEL_MODE_DEFAULT);
	return 0;
}