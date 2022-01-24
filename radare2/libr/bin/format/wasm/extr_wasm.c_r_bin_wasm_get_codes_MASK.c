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
struct TYPE_4__ {int /*<<< orphan*/ * g_codes; int /*<<< orphan*/  g_sections; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RBinWasmSection ;
typedef  TYPE_1__ RBinWasmObj ;

/* Variables and functions */
 int /*<<< orphan*/  R_BIN_WASM_SECTION_CODE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

RList *FUNC5 (RBinWasmObj *bin) {
	RBinWasmSection *code = NULL;
	;
	RList *codes = NULL;

	if (!bin || !bin->g_sections) {
		return NULL;
	}
	if (bin->g_codes) {
		return bin->g_codes;
	}
	if (!(codes = FUNC1 (bin->g_sections, R_BIN_WASM_SECTION_CODE))) {
		return FUNC4 ();
	}
	// support for multiple export sections against spec
	if (!(code = (RBinWasmSection *)FUNC2 (codes))) {
		FUNC3 (codes);
		return FUNC4 ();
	}
	bin->g_codes = FUNC0 (bin, code);
	FUNC3 (codes);
	return bin->g_codes;
}