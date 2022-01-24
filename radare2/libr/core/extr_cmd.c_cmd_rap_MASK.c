#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int cmdremote; int /*<<< orphan*/  io; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const,char) ; 
 int /*<<< orphan*/  help_msg_equal ; 
 int /*<<< orphan*/  help_msg_equalg ; 
 int /*<<< orphan*/  help_msg_equalh ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,char,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char const*) ; 
 char* FUNC15 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 char* FUNC17 (char const*) ; 

__attribute__((used)) static int FUNC18(void *data, const char *input) {
	RCore *core = (RCore *)data;
	switch (*input) {
	case '\0': // "="
		FUNC11 (core);
		break;
	case 'j': // "=j"
		FUNC1 ("TODO: list connections in json\n");
		break;
	case '!': // "=!"
		if (input[1] == '=') {
			// swap core->cmdremote = core->cmdremote? 0: 1;
			core->cmdremote = input[2]? 1: 0;
			FUNC5 (FUNC16 (core->cmdremote));
		} else {
			char *res = FUNC15 (core->io, input + 1);
			if (res) {
				FUNC4 ("%s\n", res);
				FUNC2 (res);
			}
		}
		break;
	case '$': // "=$"
		// XXX deprecate?
		FUNC0 (core, input + 1);
		break;
	case '+': // "=+"
		FUNC7 (core, input + 1);
		break;
	case '-': // "=-"
		FUNC13 (core, input + 1);
		break;
	//case ':': r_core_rtr_cmds (core, input + 1); break;
	case '<': // "=<"
		FUNC12 (core, input + 1);
		break;
	case '=': // "=="
		FUNC14 (core, input + 1);
		break;
	case 'g': // "=g"
		if (input[1] == '?') {
			FUNC6 (core, help_msg_equalg);
		} else {
			FUNC9 (core, FUNC3 (input[1], 'g'), input + 1);
		}
		break;
	case 'h': // "=h"
		if (input[1] == '?') {
			FUNC6 (core, help_msg_equalh);
		} else {
			FUNC10 (core, FUNC3 (input[1], 'h'), 'h', input + 1);
		}
		break;
	case 'H': // "=H"
		if (input[1] == '?') {
			FUNC6 (core, help_msg_equalh);
		} else {
			const char *arg = FUNC17 (input + 1);
			FUNC10 (core, FUNC3 (input[1], 'H'), 'H', arg);
		}
		break;
	case '?': // "=?"
		FUNC6 (core, help_msg_equal);
		break;
	default:
		FUNC8 (core, input);
		break;
	}
	return 0;
}