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
struct TYPE_4__ {int /*<<< orphan*/  l; } ;
typedef  TYPE_1__ RAsmState ;

/* Variables and functions */
 int /*<<< orphan*/  R2_BINDINGS ; 
 int /*<<< orphan*/  R2_EXTRAS ; 
 int /*<<< orphan*/  R2_HOME_PLUGINS ; 
 int /*<<< orphan*/  R2_PLUGINS ; 
 char* R_LIB_ENV ; 
 int /*<<< orphan*/  R_LIB_TYPE_ANAL ; 
 int /*<<< orphan*/  R_LIB_TYPE_ASM ; 
 int /*<<< orphan*/  __lib_anal_cb ; 
 int /*<<< orphan*/  __lib_asm_cb ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(RAsmState *as) {
	char *tmp = FUNC5 ("RASM2_NOPLUGINS");
	if (tmp) {
		FUNC0 (tmp);
		return;
	}
	FUNC1 (as->l, R_LIB_TYPE_ASM, "(dis)assembly plugins", &__lib_asm_cb, NULL, as);
	FUNC1 (as->l, R_LIB_TYPE_ANAL, "analysis/emulation plugins", &__lib_anal_cb, NULL, as);

	char *path = FUNC5 (R_LIB_ENV);
	if (path && *path) {
		FUNC2 (as->l, path);
	}

	// load plugins from the home directory
	char *homeplugindir = FUNC3 (R2_HOME_PLUGINS);
	FUNC2 (as->l, homeplugindir);
	FUNC0 (homeplugindir);

	// load plugins from the system directory
	char *plugindir = FUNC4 (R2_PLUGINS);
	char *extrasdir = FUNC4 (R2_EXTRAS);
	char *bindingsdir = FUNC4 (R2_BINDINGS);
	FUNC2 (as->l, plugindir);
	FUNC2 (as->l, extrasdir);
	FUNC2 (as->l, bindingsdir);
	FUNC0 (plugindir);
	FUNC0 (extrasdir);
	FUNC0 (bindingsdir);

	FUNC0 (tmp);
	FUNC0 (path);
}