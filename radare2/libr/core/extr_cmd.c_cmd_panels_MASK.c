#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  panels_root; int /*<<< orphan*/  config; scalar_t__ panels; scalar_t__ vmode; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 
 char* FUNC7 (char const*,char) ; 

__attribute__((used)) static int FUNC8(void *data, const char *input) {
	RCore *core = (RCore*) data;
	if (core->vmode) {
		return false;
	}
	if (*input == '?') {
		FUNC0 ("Usage: v[*i]\n");
		FUNC0 ("v.test    # save current layout with name test\n");
		FUNC0 ("v test    # load saved layout with name test\n");
		FUNC0 ("vi ...    # launch 'cfg.editor'\n");
		return false;
	}
	if (*input == ' ') {
		if (core->panels) {
			FUNC5 (core, input + 1);
		}
		FUNC2 (core->config, "scr.layout", input + 1);
		return true;
	}
	if (*input == '=') {
		FUNC6 (core, input + 1);
		FUNC2 (core->config, "scr.layout", input + 1);
		return true;
	}
	if (*input == 'i') {
		char *sp = FUNC7 (input, ' ');
		if (sp) {
			char *r = FUNC3 (core, sp + 1, NULL);
			if (r) {
				FUNC1 (r);
			} else {
				FUNC0 ("Cannot open file (%s)\n", sp + 1);
			}
		}
		////r_sys_cmdf ("v%s", input);
		return false;
	}
	FUNC4 (core, core->panels_root);
	return true;
}