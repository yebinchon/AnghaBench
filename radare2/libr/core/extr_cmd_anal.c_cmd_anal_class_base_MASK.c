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
struct TYPE_7__ {char* id; char* class_name; int /*<<< orphan*/  offset; } ;
struct TYPE_6__ {int /*<<< orphan*/  anal; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RCore ;
typedef  scalar_t__ RAnalClassErr ;
typedef  TYPE_2__ RAnalBaseClass ;

/* Variables and functions */
 scalar_t__ R_ANAL_CLASS_ERR_NONEXISTENT_CLASS ; 
 scalar_t__ R_ANAL_CLASS_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  help_msg_ac ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char const*) ; 

__attribute__((used)) static void FUNC10(RCore *core, const char *input) {
	RAnalClassErr err = R_ANAL_CLASS_ERR_SUCCESS;
	char c = input[0];
	switch (c) {
	case ' ': // "acb"
	case '-': { // "acb-"
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
				FUNC4 (core->anal, cstr);
			} else /*if (c == '-')*/ {
				FUNC0 ("No base id given.\n");
			}
			FUNC1 (cstr);
			break;
		}

		char *base_str = end;
		end = FUNC8 (base_str, ' ');
		if (end) {
			*end = '\0';
		}

		if (c == '-') {
			err = FUNC2 (core->anal, cstr, base_str);
			FUNC1 (cstr);
			break;
		}

		RAnalBaseClass base;
		base.id = NULL;
		base.offset = 0;
		base.class_name = base_str;

		if (end) {
			base.offset = FUNC6 (core->num, end + 1);
		}

		err = FUNC3 (core->anal, cstr, &base);
		FUNC1 (base.id);
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