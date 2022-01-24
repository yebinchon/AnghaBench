#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  config; TYPE_1__* print; int /*<<< orphan*/  printidx; int /*<<< orphan*/  offset; } ;
struct TYPE_7__ {int /*<<< orphan*/  current5format; int /*<<< orphan*/  current4format; int /*<<< orphan*/  current3format; int /*<<< orphan*/  printMode; int /*<<< orphan*/  hexMode; int /*<<< orphan*/  disMode; void* dumpCols; void* cols; int /*<<< orphan*/  ocur; int /*<<< orphan*/  cur; int /*<<< orphan*/  cur_enabled; void* asm_cmt_col; void* asm_bytes; void* asm_indent; void* asm_instr; void* asm_offset; int /*<<< orphan*/  printidx; int /*<<< orphan*/  offset; } ;
struct TYPE_6__ {int /*<<< orphan*/  ocur; int /*<<< orphan*/  cur; int /*<<< orphan*/  cur_enabled; } ;
typedef  TYPE_2__ RCoreVisualTab ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  current3format ; 
 int /*<<< orphan*/  current4format ; 
 int /*<<< orphan*/  current5format ; 
 int /*<<< orphan*/  disMode ; 
 int /*<<< orphan*/  hexMode ; 
 int /*<<< orphan*/  printMode ; 
 void* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(RCore *core, RCoreVisualTab *tab) {
	FUNC1 (core && tab);

	tab->offset = core->offset;
	tab->printidx = core->printidx;
	tab->asm_offset = FUNC0 (core->config, "asm.offset");
	tab->asm_instr = FUNC0 (core->config, "asm.instr");
	tab->asm_indent = FUNC0 (core->config, "asm.indent");
	tab->asm_bytes = FUNC0 (core->config, "asm.bytes");
	tab->asm_cmt_col = FUNC0 (core->config, "asm.cmt.col");
	tab->cur_enabled = core->print->cur_enabled;
	tab->cur = core->print->cur;
	tab->ocur = core->print->ocur;
	tab->cols = FUNC0 (core->config, "hex.cols");
	tab->dumpCols = FUNC0 (core->config, "scr.dumpcols");
	tab->disMode = disMode;
	tab->hexMode = hexMode;
	tab->printMode = printMode;
	tab->current3format = current3format;
	tab->current4format = current4format;
	tab->current5format = current5format;
	// tab->cols = core->print->cols;
}