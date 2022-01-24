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
struct TYPE_5__ {TYPE_1__* anal; } ;
struct TYPE_4__ {int /*<<< orphan*/  zign_spaces; } ;
typedef  int /*<<< orphan*/  RSpaces ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  help_msg_zs ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const) ; 

__attribute__((used)) static int FUNC8(void *data, const char *input) {
	RCore *core = (RCore *) data;
	RSpaces *zs = &core->anal->zign_spaces;

	switch (*input) {
	case '+':
		if (!input[1]) {
			FUNC0 ("usage: zs+zignspace\n");
			return false;
		}
		FUNC3 (zs, input + 1);
		break;
	case 'r':
		if (input[1] != ' ' || !input[2]) {
			FUNC0 ("usage: zsr newname\n");
			return false;
		}
		FUNC4 (zs, NULL, input + 2);
		break;
	case '-':
		if (input[1] == '\x00') {
			FUNC2 (zs);
		} else if (input[1] == '*') {
			FUNC6 (zs, NULL);
		} else {
			FUNC6 (zs, input + 1);
		}
		break;
	case 'j':
	case '*':
	case '\0':
		FUNC7 (zs, input[0]);
		break;
	case ' ':
		if (!input[1]) {
			FUNC0 ("usage: zs zignspace\n");
			return false;
		}
		FUNC5 (zs, input + 1);
		break;
	case '?':
		FUNC1 (core, help_msg_zs);
		break;
	default:
		FUNC0 ("usage: zs[+-*] [namespace]\n");
		return false;
	}

	return true;
}