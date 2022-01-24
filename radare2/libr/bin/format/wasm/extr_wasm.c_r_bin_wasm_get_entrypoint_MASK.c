#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut32 ;
struct TYPE_10__ {int /*<<< orphan*/  code; } ;
struct TYPE_9__ {int /*<<< orphan*/  g_codes; TYPE_1__* g_start; int /*<<< orphan*/  g_sections; scalar_t__ entrypoint; } ;
struct TYPE_8__ {int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_1__ RBinWasmStartEntry ;
typedef  int /*<<< orphan*/  RBinWasmSection ;
typedef  TYPE_2__ RBinWasmObj ;
typedef  TYPE_3__ RBinWasmCodeEntry ;

/* Variables and functions */
 int /*<<< orphan*/  R_BIN_WASM_SECTION_START ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ut32 FUNC5 (RBinWasmObj *bin) {
	RList *secs = NULL;
	RBinWasmStartEntry *start = NULL;
	RBinWasmSection *sec = NULL;
	RBinWasmCodeEntry *func = NULL;

	if (!bin || !bin->g_sections) {
		return 0;
	}
	if (bin->entrypoint) {
		return bin->entrypoint;
	}
	if (bin->g_start) {
		start = bin->g_start;
	} else if (!(secs = FUNC0 (bin->g_sections, R_BIN_WASM_SECTION_START))) {
		return 0;
	} else if (!(sec = (RBinWasmSection *)FUNC2 (secs))) {
		FUNC3 (secs);
		return 0;
	} else {
		start = FUNC1 (bin, sec);
		bin->g_start = start;
	}
	if (!start) {
		FUNC3 (secs);
		return 0;
	}
	// FIX: entrypoint can be also an import
	if (!bin->g_codes) {
		FUNC3 (secs);
		return 0;
	}
	func = FUNC4 (bin->g_codes, start->index);
	FUNC3 (secs);
	return (ut32) (func ? func->code : 0);
}