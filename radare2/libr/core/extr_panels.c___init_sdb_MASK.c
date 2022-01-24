#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* panels; } ;
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ RPanels ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 char* PANEL_TITLE_STRINGS_BIN ; 
 char* PANEL_TITLE_STRINGS_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

void FUNC1(RCore *core) {
	RPanels *panels = core->panels;
	FUNC0 (panels->db, "Symbols", "isq", 0);
	FUNC0 (panels->db, "Stack"  , "px 256@r:SP", 0);
	FUNC0 (panels->db, "Locals", "afvd", 0);
	FUNC0 (panels->db, "Registers", "dr", 0);
	FUNC0 (panels->db, "RegisterRefs", "drr", 0);
	FUNC0 (panels->db, "Disassembly", "pd", 0);
	FUNC0 (panels->db, "Disassemble Summary", "pdsf", 0);
	FUNC0 (panels->db, "Decompiler", "pdc", 0);
	FUNC0 (panels->db, "Decompiler With Offsets", "pddo", 0);
	FUNC0 (panels->db, "Graph", "agf", 0);
	FUNC0 (panels->db, "Tiny Graph", "agft", 0);
	FUNC0 (panels->db, "Info", "i", 0);
	FUNC0 (panels->db, "Database", "k ***", 0);
	FUNC0 (panels->db, "Console", "$console", 0);
	FUNC0 (panels->db, "Hexdump", "xc $r*16", 0);
	FUNC0 (panels->db, "Xrefs", "ax", 0);
	FUNC0 (panels->db, "Xrefs Here", "ax.", 0);
	FUNC0 (panels->db, "Functions", "afl", 0);
	FUNC0 (panels->db, "Function Calls", "aflm", 0);
	FUNC0 (panels->db, "Comments", "CC", 0);
	FUNC0 (panels->db, "Entropy", "p=e 100", 0);
	FUNC0 (panels->db, "Entropy Fire", "p==e 100", 0);
	FUNC0 (panels->db, "DRX", "drx", 0);
	FUNC0 (panels->db, "Sections", "iSq", 0);
	FUNC0 (panels->db, "Segments", "iSSq", 0);
	FUNC0 (panels->db, PANEL_TITLE_STRINGS_DATA, "izq", 0);
	FUNC0 (panels->db, PANEL_TITLE_STRINGS_BIN, "izzq", 0);
	FUNC0 (panels->db, "Maps", "dm", 0);
	FUNC0 (panels->db, "Modules", "dmm", 0);
	FUNC0 (panels->db, "Backtrace", "dbt", 0);
	FUNC0 (panels->db, "Breakpoints", "db", 0);
	FUNC0 (panels->db, "Imports", "iiq", 0);
	FUNC0 (panels->db, "Clipboard", "yx", 0);
	FUNC0 (panels->db, "New", "o", 0);
	FUNC0 (panels->db, "Var READ address", "afvR", 0);
	FUNC0 (panels->db, "Var WRITE address", "afvW", 0);
	FUNC0 (panels->db, "Summary", "pdsf", 0);
	FUNC0 (panels->db, "Classes", "icq", 0);
	FUNC0 (panels->db, "Methods", "ic", 0);
	FUNC0 (panels->db, "Relocs", "ir", 0);
	FUNC0 (panels->db, "Headers", "iH", 0);
	FUNC0 (panels->db, "File Hashes", "it", 0);
}