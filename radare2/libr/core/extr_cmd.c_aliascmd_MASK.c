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
struct TYPE_4__ {int /*<<< orphan*/  rcmd; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC4(RCore *core, const char *str) {
	switch (str[0]) {
	case '\0': // "=$"
		FUNC3 (core, "$");
		break;
	case '-': // "=$-"
		if (str[1]) {
			FUNC1 (core->rcmd, str + 2);
		} else {
			FUNC1 (core->rcmd, NULL);
		//	r_cmd_alias_reset (core->rcmd);
		}
		break;
	case '?': // "=$?"
		FUNC0 ("Usage: =$[-][remotecmd]  # remote command alias\n");
		FUNC0 (" =$dr   # makes 'dr' alias for =!dr\n");
		FUNC0 (" =$-dr  # unset 'dr' alias\n");
		break;
	default:
		FUNC2 (core->rcmd, str, "", 1);
		break;
	}
}