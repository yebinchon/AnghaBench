#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* id; void* offset; void* addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  anal; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RAnalVTable ;
typedef  scalar_t__ RAnalClassErr ;

/* Variables and functions */
 scalar_t__ R_ANAL_CLASS_ERR_NONEXISTENT_CLASS ; 
 scalar_t__ R_ANAL_CLASS_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  help_msg_ac ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char const*) ; 

__attribute__((used)) static void FUNC10(RCore *core, const char *input) {
	RAnalClassErr err = R_ANAL_CLASS_ERR_SUCCESS;
	char c = input[0];
	switch (c) {
	case ' ': // "acv"
	case '-': { // "acv-"
		const char *str = FUNC7 (input + 1);
		if (!*str) {
			FUNC0 ("No class name given.\n");
			return;
		}
		char *cstr = FUNC9 (str);
		if (!cstr) {
			break;
		}
		char *end = FUNC8 (cstr, ' ');
		if (end) {
			*end = '\0';
			end++;
		}

		if (!end || *end == '\0') {
			if (c == ' ') {
				FUNC2 (core->anal, cstr);
			} else /*if (c == '-')*/ {
				FUNC0 ("No vtable id given. See acv [class name].\n");
			}
			FUNC1 (cstr);
			break;
		}

		char *arg1_str = end;
		end = FUNC8 (arg1_str, ' ');
		if (end) {
			*end = '\0';
		}

		if (c == '-') {
			err = FUNC3 (core->anal, cstr, arg1_str);
			FUNC1 (cstr);
			break;
		}

		RAnalVTable vtable;
		vtable.id = NULL;
		vtable.addr = FUNC6 (core->num, arg1_str);
		vtable.offset = 0;

		if (end) {
			vtable.offset = FUNC6 (core->num, end + 1);
		}

		err = FUNC4 (core->anal, cstr, &vtable);
		FUNC1 (vtable.id);
		FUNC1 (cstr);
		break;
	}
	default:
		FUNC5 (core, help_msg_ac);
		break;
	}

	if (err == R_ANAL_CLASS_ERR_NONEXISTENT_CLASS) {
		FUNC0 ("Class does not exist.\n");
	}
}