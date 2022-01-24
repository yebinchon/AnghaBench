#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  anal; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  help_msg_zo ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC5(void *data, const char *input) {
	RCore *core = (RCore *) data;

	switch (*input) {
	case ' ':
		if (input[1]) {
			return FUNC2 (core->anal, input + 1);
		}
		FUNC0 ("usage: zo filename\n");
		return false;
	case 's':
		if (input[1] == ' ' && input[2]) {
			return FUNC4 (core->anal, input + 2);
		}
		FUNC0 ("usage: zos filename\n");
		return false;
	case 'z':
		if (input[1] == ' ' && input[2]) {
			return FUNC3 (core->anal, input + 2);
		}
		FUNC0 ("usage: zoz filename\n");
		return false;
	case '?':
		FUNC1 (core, help_msg_zo);
		break;
	default:
		FUNC0 ("usage: zo[zs] filename\n");
		return false;
	}

	return true;
}