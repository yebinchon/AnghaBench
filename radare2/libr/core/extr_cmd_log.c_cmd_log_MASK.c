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
struct TYPE_15__ {int sync_index; TYPE_1__* log; } ;
struct TYPE_14__ {int /*<<< orphan*/  last; } ;
typedef  int /*<<< orphan*/  RCoreTask ;
typedef  int /*<<< orphan*/  RCoreLogCallback ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  help_msg_T ; 
 int /*<<< orphan*/  log_callback_all ; 
 int /*<<< orphan*/  log_callback_r2 ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 void* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int) ; 
 char* FUNC16 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int,int,char const) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (TYPE_2__*,int,char*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 char* FUNC21 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 void* FUNC23 (char const*,char) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC25(void *data, const char *input) {
	RCore *core = (RCore *) data;
	const char *arg, *input2;
	int n, n2;

	if (!input) {
		return 1;
	}

	input2 = (input && *input)? input + 1: "";
	arg = FUNC23 (input2, ' ');
	n = FUNC0 (input2);
	n2 = arg? FUNC0 (arg + 1): 0;

	switch (*input) {
	case 'e': // "Te" shell: less
		{
			char *p = FUNC23 (input, ' ');
			if (p) {
				char *b = FUNC21 (p + 1, NULL);
				if (b) {
					FUNC8 (b, NULL);
					FUNC2 (b);
				} else {
					FUNC1 ("File not found\n");
				}
			} else {
				FUNC1 ("Usage: less [filename]\n");
			}
		}
		break;
	case 'l': // "Tl"
		FUNC9 ("%d\n", core->log->last - 1);
		break;
	case '-': //  "T-"
		FUNC15 (core, n);
		break;
	case '?': // "T?"
		FUNC13 (core, help_msg_T);
		break;
	case 'T': // "TT" Ts ? as ms?
		if (FUNC7 ()) {
			FUNC24 (core);
		} else {
			FUNC1 ("Only available when the screen is interactive\n");
		}
		break;
	case '=': // "T="
		if (input[1] == '&') { //  "T=&"
			if (input[2] == '&') { // "T=&&"
				FUNC5 (NULL, NULL);
				while (!FUNC6 ()) {
					FUNC12 (core, "T=");
					void *bed = FUNC10();
					FUNC22 (1);
					FUNC11 (bed);
				}
				FUNC4 ();
			} else {
				// TODO: Sucks that we can't enqueue functions, only commands
				FUNC1 ("Background thread syncing with http.sync started.\n");
				RCoreTask *task = FUNC20 (core, true, "T=&&", NULL, core);
				FUNC19 (core, task);
			}
		} else {
			if (FUNC0 (input + 1) > 0 || (input[1] == '0')) {
				core->sync_index = 0;
			} else {
				RCoreLogCallback log_callback = (input[1] == '*')
					? log_callback_all: log_callback_r2;
				char *res = FUNC16 (core, core->sync_index);
				if (res) {
					int idx = FUNC3 (res);
					if (idx != -1) {
						core->sync_index = idx + 1;
					}
					FUNC18 (core, res, log_callback);
					FUNC2 (res);
				} else {
					FUNC9 ("Please check e http.sync\n");
				}
			}
		}
		break;
	case ' ': // "T "
		if (n > 0 || *input == '0') {
			FUNC17 (core, n, n2, *input);
		} else {
			FUNC14 (core, input + 1);
		}
		break;
	case 'm': // "Tm"
		if (n > 0) {
			FUNC17 (core, n, 1, 't');
		} else {
			FUNC17 (core, n, 0, 't');
		}
		break;
	case 'j': // "Tj"
	case '*':
	case '\0':
		FUNC17 (core, n, n2, *input);
		break;
	}
	return 0;
}