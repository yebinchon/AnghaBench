#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_10__ {int /*<<< orphan*/ * reg; } ;
struct TYPE_9__ {scalar_t__ debug; } ;
struct TYPE_8__ {int /*<<< orphan*/  print; int /*<<< orphan*/  offset; TYPE_4__* io; TYPE_5__* dbg; TYPE_1__* anal; } ;
struct TYPE_7__ {int /*<<< orphan*/ * reg; } ;
typedef  int /*<<< orphan*/  RReg ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(RCore *core, const char *input, bool is_silent) {
	ut64 off;
	if (core->io->debug) {
		off = FUNC1 (core->dbg, input);
		if (!is_silent) {
			FUNC2 (core->io, core->offset, FUNC3 (core->print));
		}
		FUNC0 (core, off, 1);
	} else {
		RReg *orig = core->dbg->reg;
		core->dbg->reg = core->anal->reg;
		off = FUNC1 (core->dbg, input);
		core->dbg->reg = orig;
		if (!is_silent) {
			FUNC2 (core->io, core->offset, FUNC3 (core->print));
		}
		FUNC0 (core, off, 1);
	}
}