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
struct TYPE_8__ {int stackFd; int /*<<< orphan*/  _tabsbuf; int /*<<< orphan*/  sl; int /*<<< orphan*/  osl; int /*<<< orphan*/  opstr; int /*<<< orphan*/  prev_line_col; int /*<<< orphan*/  refline2; int /*<<< orphan*/  refline; int /*<<< orphan*/  line_col; int /*<<< orphan*/  line; int /*<<< orphan*/  comment; int /*<<< orphan*/  ssa; int /*<<< orphan*/  hint; int /*<<< orphan*/  analop; int /*<<< orphan*/  asmop; TYPE_1__* core; scalar_t__ show_emu_stack; } ;
struct TYPE_7__ {int /*<<< orphan*/  io; } ;
typedef  TYPE_2__ RDisasmState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(RDisasmState *ds) {
	if (!ds) {
		return;
	}
	if (ds->show_emu_stack) {
		// TODO: destroy fake stack in here
		FUNC3 ("Free fake stack\n");
		if (ds->stackFd != -1) {
			FUNC8 (ds->core->io, ds->stackFd);
		}
	}
	FUNC7 (&ds->asmop);
	FUNC6 (&ds->analop);
	FUNC5 (ds->hint);
	FUNC1 (ds);
	FUNC2 (ds);
	FUNC1 (ds);
	FUNC9 (ds->ssa);
	FUNC4 (ds->comment);
	FUNC4 (ds->line);
	FUNC4 (ds->line_col);
	FUNC4 (ds->refline);
	FUNC4 (ds->refline2);
	FUNC4 (ds->prev_line_col);
	FUNC4 (ds->opstr);
	FUNC4 (ds->osl);
	FUNC4 (ds->sl);
	FUNC4 (ds->_tabsbuf);
	FUNC0 (ds);
}