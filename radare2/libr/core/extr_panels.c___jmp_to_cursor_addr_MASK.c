#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_11__ {scalar_t__ offset; } ;
struct TYPE_10__ {TYPE_1__* view; } ;
struct TYPE_9__ {int /*<<< orphan*/  curpos; } ;
typedef  TYPE_2__ RPanel ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 scalar_t__ UT64_MAX ; 
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

void FUNC2(RCore *core, RPanel *panel) {
	ut64 addr = FUNC0 (core, panel, panel->view->curpos);
	if (addr == UT64_MAX) {
		return;
	}
	core->offset = addr;
	FUNC1 (core);
}