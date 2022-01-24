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
struct TYPE_4__ {int /*<<< orphan*/ * g_imports; int /*<<< orphan*/  g_sections; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RBinWasmSection ;
typedef  TYPE_1__ RBinWasmObj ;

/* Variables and functions */
 int /*<<< orphan*/  R_BIN_WASM_SECTION_IMPORT ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

RList *FUNC5 (RBinWasmObj *bin) {
	RBinWasmSection *import = NULL;
	RList *imports = NULL;

	if (!bin || !bin->g_sections) {
		return NULL;
	}
	if (bin->g_imports) {
		return bin->g_imports;
	}
	if (!(imports = FUNC1 (bin->g_sections, R_BIN_WASM_SECTION_IMPORT))) {
		return FUNC4 ();
	}
	// support for multiple import sections against spec
	if (!(import = (RBinWasmSection *)FUNC2 (imports))) {
		FUNC3 (imports);
		return FUNC4 ();
	}
	bin->g_imports = FUNC0 (bin, import);
	FUNC3 (imports);
	return bin->g_imports;
}