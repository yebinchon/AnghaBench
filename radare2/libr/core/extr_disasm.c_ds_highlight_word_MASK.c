#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* opstr; char* color_linehl; int /*<<< orphan*/  asmop; } ;
typedef  TYPE_1__ RDisasmState ;

/* Variables and functions */
 char* Color_RESET_BG ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char*,char*,char const*) ; 

__attribute__((used)) static void FUNC3(RDisasmState * ds, char *word, char *color) {
	char *source = ds->opstr? ds->opstr: FUNC1 (&ds->asmop);
	const char *color_reset = FUNC0 (ds) ? ds->color_linehl : Color_RESET_BG;
	char *asm_str = FUNC2 (source, word, color, color_reset);
	ds->opstr = asm_str? asm_str: source;
}