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
struct TYPE_7__ {char* name; int vtable_offset; scalar_t__ addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  anal; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RAnalMethod ;
typedef  int RAnalClassErr ;

/* Variables and functions */
#define  R_ANAL_CLASS_ERR_NONEXISTENT_ATTR 129 
#define  R_ANAL_CLASS_ERR_NONEXISTENT_CLASS 128 
 int R_ANAL_CLASS_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  help_msg_ac ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char const*) ; 

__attribute__((used)) static void FUNC10(RCore *core, const char *input) {
	RAnalClassErr err = R_ANAL_CLASS_ERR_SUCCESS;
	char c = input[0];
	switch (c) {
	case ' ': // "acm"
	case '-': // "acm-"
	case 'n': { // "acmn"
		const char *str = FUNC7 (input + 1);
		if (!*str) {
			FUNC0 ("No class name given.\n");
			break;
		}
		char *cstr = FUNC9 (str);
		if (!cstr) {
			break;
		}
		char *end = FUNC8 (cstr, ' ');
		if (!end) {
			FUNC0 ("No method name given.\n");
			FUNC1 (cstr);
			break;
		}
		*end = '\0';
		char *name_str = end + 1;

		if (c == ' ' || c == 'n') {
			end = FUNC8 (name_str, ' ');
			if (!end) {
				if (c == ' ') {
					FUNC0 ("No offset given.\n");
				} else if (c == 'n') {
					FUNC0 ("No new method name given.\n");
				}
				FUNC1 (cstr);
				break;
			}
			*end = '\0';
		}

		if (c == ' ') {
			char *addr_str = end + 1;
			end = FUNC8 (addr_str, ' ');
			if (end) {
				*end = '\0';
			}

			RAnalMethod meth;
			meth.name = name_str;
			meth.addr = FUNC6 (core->num, addr_str);
			meth.vtable_offset = -1;
			if (end) {
				meth.vtable_offset = (int)FUNC6 (core->num, end + 1);
			}
			err = FUNC4 (core->anal, cstr, &meth);
		} else if (c == 'n') {
			char *new_name_str = end + 1;
			end = FUNC8 (new_name_str, ' ');
			if (end) {
				*end = '\0';
			}

			err = FUNC3 (core->anal, cstr, name_str, new_name_str);
		} else if (c == '-') {
			err = FUNC2 (core->anal, cstr, name_str);
		}

		FUNC1 (cstr);
		break;
	}
	default:
		FUNC5 (core, help_msg_ac);
		break;
	}

	switch (err) {
		case R_ANAL_CLASS_ERR_NONEXISTENT_CLASS:
			FUNC0 ("Class does not exist.\n");
			break;
		case R_ANAL_CLASS_ERR_NONEXISTENT_ATTR:
			FUNC0 ("Method does not exist.\n");
			break;
		default:
			break;
	}
}