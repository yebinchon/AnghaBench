#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  anal; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  RAnalClassErr ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_CLASS_ERR_CLASH ; 
 int /*<<< orphan*/  R_ANAL_CLASS_ERR_NONEXISTENT_CLASS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  help_msg_ac ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char const*) ; 
 char* FUNC11 (char*,char) ; 
 char* FUNC12 (char const*) ; 

__attribute__((used)) static void FUNC13(RCore *core, const char *input) {
	switch (input[0]) {
	case 'l': // "acl"
		FUNC7 (core->anal, input[1]);
		break;
	case ' ': // "ac"
	case '-': // "ac-"
	case 'n': { // "acn"
		const char *str = FUNC10 (input + 1);
		if (!*str) {
			break;
		}
		char *cstr = FUNC12 (str);
		if (!cstr) {
			break;
		}
		char *end = FUNC11 (cstr, ' ');
		if (end) {
			*end = '\0';
		}
		if (input[0] == '-') {
			FUNC6 (core->anal, cstr);
		} else if(input[0] == 'n') {
			if (!end) {
				FUNC3 ("No new class name given.\n");
			} else {
				char *new_name = end + 1;
				end = FUNC11 (new_name, ' ');
				if (end) {
					*end = '\0';
				}
				RAnalClassErr err = FUNC8 (core->anal, cstr, new_name);
				if (err == R_ANAL_CLASS_ERR_NONEXISTENT_CLASS) {
					FUNC3 ("Class does not exist.\n");
				} else if (err == R_ANAL_CLASS_ERR_CLASH) {
					FUNC3 ("A class with this name already exists.\n");
				}
			}
		} else {
			FUNC5 (core->anal, cstr);
		}
		FUNC4 (cstr);
		break;
	}
	case 'v':
		FUNC2 (core, input + 1);
		break;
	case 'b': // "acb"
		FUNC0 (core, input + 1);
		break;
	case 'm': // "acm"
		FUNC1 (core, input + 1);
		break;
	default: // "ac?"
		FUNC9 (core, help_msg_ac);
		break;
	}
}