#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ut64 ;
struct TYPE_7__ {int cur; int screen_bounds; int ocur; scalar_t__ cur_enabled; } ;
struct TYPE_6__ {int offset; TYPE_3__* print; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC3(RCore *core, ut64 addr, ut64 bsze, ut64 newaddr) {
	bool restore_seek = true;
	if (core->offset != newaddr) {
		bool cursor_moved = false;
		// when new address is in the screen bounds, just move
		// the cursor if enabled and restore seek
		if (core->print->cur != -1 && core->print->screen_bounds > 1) {
			if (core->offset >= addr &&
			    core->offset < core->print->screen_bounds) {
				core->print->ocur = -1;
				core->print->cur = core->offset - addr;
				cursor_moved = true;
			}
		}

		if (!cursor_moved) {
			restore_seek = false;
			FUNC2 (core->print);
		}
	}

	if (core->print->cur_enabled) {
		if (restore_seek) {
			FUNC1 (core, addr, 1);
			FUNC0 (core, bsze);
		}
	}
}