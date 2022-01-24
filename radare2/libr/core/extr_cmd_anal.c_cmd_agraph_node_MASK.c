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
struct TYPE_4__ {int /*<<< orphan*/  graph; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  help_msg_agn ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char*) ; 
 char** FUNC9 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC10 (char**) ; 
 char* FUNC11 (char*,char*,char*,int) ; 
 char* FUNC12 (char*) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 

__attribute__((used)) static void FUNC15(RCore *core, const char *input) {
	switch (*input) {
	case ' ': { // "agn"
		char *newbody = NULL;
		char **args, *body;
		int n_args, B_LEN = FUNC13 ("base64:");
		int color = -1;
		input++;
		args = FUNC9 (input, &n_args);
		if (n_args < 1 || n_args > 3) {
			FUNC6 ("Wrong arguments\n");
			FUNC10 (args);
			break;
		}
		// strdup cause there is double free in r_str_argv_free due to a realloc call
		if (n_args > 1) {
			body = FUNC12 (args[1]);
			if (FUNC14 (body, "base64:", B_LEN) == 0) {
				body = FUNC11 (body, "\\n", "", true);
				newbody = (char *)FUNC5 (body + B_LEN, -1);
				FUNC2 (body);
				if (!newbody) {
					FUNC1 ("Cannot allocate buffer\n");
					FUNC10 (args);
					break;
				}
				body = newbody;
			}
			body = FUNC8 (body, "\n");
			if (n_args > 2) {
			        color = FUNC0(args[2]);
			}
		} else {
			body = FUNC12 ("");
		}
		FUNC3 (core->graph, args[0], body, color);
		FUNC10 (args);
		FUNC2 (body);
		//free newbody it's not necessary since r_str_append reallocate the space
		break;
	}
	case '-': { // "agn-"
		char **args;
		int n_args;

		input++;
		args = FUNC9 (input, &n_args);
		if (n_args != 1) {
			FUNC6 ("Wrong arguments\n");
			FUNC10 (args);
			break;
		}
		FUNC4 (core->graph, args[0]);
		FUNC10 (args);
		break;
	}
	case '?':
	default:
		FUNC7 (core, help_msg_agn);
		break;
	}
}