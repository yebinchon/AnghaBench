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
struct TYPE_5__ {TYPE_1__* num; int /*<<< orphan*/  r_main_radiff2; int /*<<< orphan*/  r_main_rax2; } ;
struct TYPE_4__ {int value; } ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static bool FUNC5(RCore *core, const char *_input) {
	char *input = FUNC2 ("r%s", _input);
	int rc = 0;
	if (FUNC3 (input, "rax2")) {
		rc = FUNC0 (core->r_main_rax2, input);
	} else if (FUNC3 (input, "radare2")) {
		FUNC4 ("%s", input);
		// rc = __runMain (core->r_main_radare2, input);
	} else if (FUNC3 (input, "rasm2")) {
		FUNC4 ("%s", input);
		// rc = __runMain (core->r_main_rasm2, input);
	} else if (FUNC3 (input, "rabin2")) {
		FUNC4 ("%s", input);
		// rc = __runMain (core->r_main_rabin2, input);
	} else if (FUNC3 (input, "ragg2")) {
		FUNC4 ("%s", input);
		// rc = __runMain (core->r_main_ragg2, input);
	} else if (FUNC3 (input, "r2pm")) {
		FUNC4 ("%s", input);
		// rc = __runMain (core->r_main_r2pm, input);
	} else if (FUNC3 (input, "radiff2")) {
		rc = FUNC0 (core->r_main_radiff2, input);
	} else {
		const char *r2cmds[] = {
			"rax2", "r2pm", "rasm2", "rabin2", "rahash2", "rafind2", "rarun2", "ragg2", "radare2", "r2", NULL
		};
		int i;
		for (i = 0; r2cmds[i]; i++) {
			if (FUNC3 (input, r2cmds[i])) {
				FUNC1 (input);
				return true;
			}
		}
		return false;
	}
	FUNC1 (input);
	core->num->value = rc;
	return true;
}