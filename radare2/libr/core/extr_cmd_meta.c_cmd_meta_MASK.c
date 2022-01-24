#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  meta_spaces; } ;
struct TYPE_14__ {TYPE_2__* anal; int /*<<< orphan*/  offset; int /*<<< orphan*/  num; } ;
typedef  int /*<<< orphan*/  RSpaces ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  RAnalFunction ;

/* Variables and functions */
 int R_ANAL_FCN_TYPE_FCN ; 
 int R_ANAL_FCN_TYPE_SYM ; 
 int /*<<< orphan*/  R_META_TYPE_ANY ; 
 int /*<<< orphan*/  UT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  help_msg_C ; 
 int /*<<< orphan*/  help_msg_CS ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,char const) ; 
 int FUNC13 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char const) ; 

__attribute__((used)) static int FUNC20(void *data, const char *input) {
	RCore *core = (RCore*)data;
	RAnalFunction *f;
	RSpaces *ms;
	int i;

	switch (*input) {
	case 'v': // "Cv"
		FUNC7 (core, input + 1);
		break;
	case '\0': // "C"
		FUNC11 (core->anal, R_META_TYPE_ANY, 0);
		break;
	case 'j': // "Cj"
	case '*': { // "C*"
		if (!input[0] || input[1] == '.') {
			FUNC12 (core->anal, core->offset, *input);
		} else {
			FUNC11 (core->anal, R_META_TYPE_ANY, *input);
		}
		break;
	}
	case '.': { // "C."
		FUNC12 (core->anal, core->offset, 0);
		break;
	}
	case 'L': // "CL"
		FUNC1 (core, input + 1);
		break;
	case 'C': // "CC"
		FUNC0 (core, input);
		break;
	case 't': // "Ct" type analysis commnets
		FUNC3 (core, input);
		break;
	case 'r': // "Cr" run command
	case 'h': // "Ch" comment
	case 's': // "Cs" string
	case 'z': // "Cz" zero-terminated string
	case 'd': // "Cd" data
	case 'm': // "Cm" magic
	case 'f': // "Cf" formatted
		FUNC2 (core, input);
		break;
	case '-': // "C-"
		if (input[1] != '*') {
			i = input[1] ? FUNC13 (core->num, input + (input[1] == ' ' ? 2 : 1)) : 1;
			FUNC10 (core->anal, R_META_TYPE_ANY, core->offset, i);
		} else FUNC9 (core->anal, 0LL, UT64_MAX);
		break;
	case '?': // "C?"
		FUNC8 (core, help_msg_C);
		break;
	case 'F': // "CF"
		f = FUNC5 (core->anal, core->offset,
			R_ANAL_FCN_TYPE_FCN|R_ANAL_FCN_TYPE_SYM);
		if (f) {
			FUNC6 (core->anal, f, input + 2);
		} else {
			FUNC4 ("Cannot find function here\n");
		}
		break;
	case 'S': // "CS"
		ms = &core->anal->meta_spaces;
		/** copypasta from `fs`.. this must be refactorized to be shared */
		switch (input[1]) {
		case '?': // "CS?"
			FUNC8 (core, help_msg_CS);
			break;
		case '+': // "CS+"
			FUNC15 (ms, input + 2);
			break;
		case 'r': // "CSr"
			if (input[2] == ' ') {
				FUNC16 (ms, NULL, input+2);
			} else {
				FUNC4 ("Usage: CSr [newname]\n");
			}
			break;
		case '-': // "CS-"
			if (input[2]) {
				if (input[2]=='*') {
					FUNC18 (ms, NULL);
				} else {
					FUNC18 (ms, input+2);
				}
			} else {
				FUNC14 (ms);
			}
			break;
		case 'j': // "CSj"
		case '\0': // "CS"
		case '*': // "CS*"
			FUNC19 (ms, input[1]);
			break;
		case ' ': // "CS "
			FUNC17 (ms, input + 2);
			break;
		default:
			FUNC19 (ms, 0);
			break;
		}
		break;
	}
	return true;
}