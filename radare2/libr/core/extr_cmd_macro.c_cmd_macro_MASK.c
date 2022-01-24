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
struct TYPE_5__ {TYPE_1__* rcmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  macro; } ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  help_msg_lparen ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,char) ; 
 char* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(void *data, const char *input) {
	char *buf = NULL;
	RCore *core = (RCore*)data;

	switch (*input) {
	case ')':
		FUNC4 (&core->rcmd->macro, input + 1);
		break;
	case '-':
		FUNC8 (&core->rcmd->macro, input + 1);
		break;
	case '*':
		FUNC7 (&core->rcmd->macro);
		break;
	case '\0':
		FUNC6 (&core->rcmd->macro);
		break;
	case '(':
	case '?':
		FUNC9 (core, help_msg_lparen);
		break;
	default: {
		// XXX: stop at first ')'. if next is '(' and last
		//int lastiscp = input[strlen (input)-1] == ')';
		int mustcall = 0;
		int i, j = 0;
		buf = FUNC11 (input);

		for (i = 0; buf[i]; i++) {
			switch (buf[i]) {
			case '(':
				j++;
				break;
			case ')':
				j--;
				if (buf[i+1] =='(') {
					buf[i + 1] = 0;
					mustcall = i + 2;
				}
				break;
			}
		}
		buf[FUNC12 (buf) - 1]=0;
		FUNC3 (&core->rcmd->macro, buf);
		if (mustcall) {
			char *comma = FUNC10 (buf, ' ');
			if (!comma) {
				comma = FUNC10 (buf, ',');
			}
			if (comma) {
				*comma = ' ';
				FUNC2 (comma + 1, buf + mustcall, FUNC12 (buf + mustcall) + 1);
				FUNC5 (&core->rcmd->macro, buf);
			} else {
				FUNC0 ("Invalid syntax for macro\n");
			}
		}
		FUNC1 (buf);
		} break;
	}
	return 0;
}