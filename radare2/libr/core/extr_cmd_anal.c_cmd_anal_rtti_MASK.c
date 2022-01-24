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
struct TYPE_4__ {int /*<<< orphan*/  anal; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  help_msg_av ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(RCore *core, const char *input) {
	switch (input[0]) {
	case '\0': // "avr"
	case 'j': // "avrj"
		FUNC3 (core->anal, core->offset, input[0]);
		break;
	case 'a': // "avra"
		FUNC2 (core->anal, input[1]);
		break;
	case 'r': // "avrr"
		FUNC4 (core->anal);
		break;
	case 'D': { // "avrD"
		char *name = FUNC7 (input + 1);
		char *demangled = FUNC1 (core->anal, name);
		FUNC0 (name);
		if (demangled) {
			FUNC5 (demangled);
			FUNC0 (demangled);
		}
		break;
	}
	default :
		FUNC6 (core, help_msg_av);
		break;
	}
}