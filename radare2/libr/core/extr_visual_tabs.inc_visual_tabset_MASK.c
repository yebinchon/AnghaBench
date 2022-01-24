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
struct TYPE_11__ {int /*<<< orphan*/  config; TYPE_1__* print; int /*<<< orphan*/  printidx; } ;
struct TYPE_10__ {int /*<<< orphan*/  dumpCols; int /*<<< orphan*/  cols; int /*<<< orphan*/  asm_cmt_col; int /*<<< orphan*/  asm_indent; int /*<<< orphan*/  asm_bytes; int /*<<< orphan*/  asm_instr; int /*<<< orphan*/  asm_offset; int /*<<< orphan*/  current5format; int /*<<< orphan*/  current4format; int /*<<< orphan*/  current3format; int /*<<< orphan*/  printMode; int /*<<< orphan*/  hexMode; int /*<<< orphan*/  disMode; int /*<<< orphan*/  ocur; int /*<<< orphan*/  cur; int /*<<< orphan*/  cur_enabled; int /*<<< orphan*/  printidx; int /*<<< orphan*/  offset; } ;
struct TYPE_9__ {int /*<<< orphan*/  ocur; int /*<<< orphan*/  cur; int /*<<< orphan*/  cur_enabled; } ;
typedef  TYPE_2__ RCoreVisualTab ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 size_t PRINT_3_FORMATS ; 
 size_t PRINT_4_FORMATS ; 
 size_t PRINT_5_FORMATS ; 
 size_t PRINT_HEX_FORMATS ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current3format ; 
 int /*<<< orphan*/  current4format ; 
 int /*<<< orphan*/  current5format ; 
 int /*<<< orphan*/  disMode ; 
 int /*<<< orphan*/  hexMode ; 
 int /*<<< orphan*/ * print3Formats ; 
 int /*<<< orphan*/ * print4Formats ; 
 int /*<<< orphan*/ * print5Formats ; 
 int /*<<< orphan*/ * printHexFormats ; 
 int /*<<< orphan*/  printMode ; 
 int /*<<< orphan*/ * printfmtSingle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(RCore *core, RCoreVisualTab *tab) {
	FUNC5 (core && tab);

	FUNC2 (core, tab->offset, 1);
	core->printidx = tab->printidx;
	core->print->cur_enabled = tab->cur_enabled;
	core->print->cur = tab->cur;
	core->print->ocur = tab->ocur;
	disMode = tab->disMode;
	hexMode = tab->hexMode;
	printMode = tab->printMode;
	current3format = tab->current3format;
	current4format = tab->current4format;
	current5format = tab->current5format;
	FUNC3 (core, disMode);
	FUNC4 (core, hexMode);
	FUNC1 (core->config, "asm.offset", tab->asm_offset);
	FUNC1 (core->config, "asm.instr", tab->asm_instr);
	FUNC1 (core->config, "asm.bytes", tab->asm_bytes);
	FUNC1 (core->config, "asm.indent", tab->asm_indent);
	FUNC1 (core->config, "asm.cmt.col", tab->asm_cmt_col);
	FUNC1 (core->config, "hex.cols", tab->cols);
	FUNC1 (core->config, "scr.dumpcols", tab->dumpCols);
	printfmtSingle[0] = printHexFormats[FUNC0(hexMode) % PRINT_HEX_FORMATS];
	printfmtSingle[2] = print3Formats[FUNC0(current3format) % PRINT_3_FORMATS];
	printfmtSingle[3] = print4Formats[FUNC0(current4format) % PRINT_4_FORMATS];
	printfmtSingle[4] = print5Formats[FUNC0(current5format) % PRINT_5_FORMATS];
}