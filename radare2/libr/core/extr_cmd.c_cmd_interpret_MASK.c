#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_2__* rcmd; TYPE_1__* num; } ;
struct TYPE_17__ {int /*<<< orphan*/  macro; } ;
struct TYPE_16__ {int value; } ;
struct TYPE_15__ {int is_html; } ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  help_msg_dot ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_14__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int) ; 
 char* FUNC15 (TYPE_3__*,char*) ; 
 char* FUNC16 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,char const*) ; 
 char* FUNC18 (TYPE_3__*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,char const*) ; 
 char* FUNC20 (char*,char*) ; 
 char* FUNC21 (char const*) ; 
 char* FUNC22 (char const*,char) ; 
 char* FUNC23 (char const*) ; 

__attribute__((used)) static int FUNC24(void *data, const char *input) {
	char *str, *ptr, *eol, *rbuf, *filter, *inp;
	const char *host, *port, *cmd;
	RCore *core = (RCore *)data;

	switch (*input) {
	case '\0': // "."
		FUNC14 (core, 0);
		break;
	case ':': // ".:"
		if ((ptr = FUNC22 (input + 1, ' '))) {
			/* .:port cmd */
			/* .:host:port cmd */
			cmd = ptr + 1;
			*ptr = 0;
			eol = FUNC22 (input + 1, ':');
			if (eol) {
				*eol = 0;
				host = input + 1;
				port = eol + 1;
			} else {
				host = "localhost";
				port = input + ((input[1] == ':')? 2: 1);
			}
			rbuf = FUNC18 (core, host, port, cmd);
			if (rbuf) {
				FUNC7 (rbuf);
				FUNC2 (rbuf);
			}
		} else {
			FUNC17 (core, input + 1);
		}
		break;
	case '.': // ".." same as \n
		if (input[1] == '.') { // "..." run the last command repeated
			// same as \n with e cmd.repeat=true
			FUNC14 (core, 1);
		} else if (input[1]) {
			char *str = FUNC16 (core, FUNC21 (input));
			if (str) {
				FUNC10 (core, str, 0);
				FUNC2 (str);
			}
		} else {
			FUNC1 ("Usage: .. ([file])\n");
		}
		break;
	case '*': // ".*"
		{
			const char *a = FUNC21 (input + 1);
			char *s = FUNC23 (a);
			char *sp = FUNC22 (s, ' ');
			if (sp) {
				*sp = 0;
			}
			if (FUNC0 (s)) {
				FUNC19 (core, s);
			}
			FUNC2 (s);
		}
		break;
	case '-': // ".-"
		if (input[1] == '?') {
			FUNC8 ("Usage: '-' '.-' '. -' do the same\n");
		} else {
			FUNC19 (core, "-");
		}
		break;
	case ' ': // ". "
		{
			const char *script_file = FUNC21 (input + 1);
			if (*script_file == '$') {
				FUNC11 (core, script_file);
			} else {
				if (!FUNC19 (core, script_file)) {
					FUNC1 ("Cannot find script '%s'\n", script_file);
					core->num->value = 1;
				} else {
					core->num->value = 0;
				}
			}
		}
		break;
	case '!': // ".!"
		/* from command */
		FUNC12 (core, input + 1);
		break;
	case '(': // ".("
		FUNC3 (&core->rcmd->macro, input + 1);
		break;
	case '?': // ".?"
		FUNC13 (core, help_msg_dot);
		break;
	default:
		if (*input >= 0 && *input <= 9) {
			FUNC1 ("|ERROR| No .[0..9] to avoid infinite loops\n");
			break;
		}
		inp = FUNC23 (input);
		filter = FUNC22 (inp, '~');
		if (filter) {
			*filter = 0;
		}
		int tmp_html = FUNC9 ()->is_html;
		FUNC9 ()->is_html = 0;
		ptr = str = FUNC15 (core, inp);
		FUNC9 ()->is_html = tmp_html;

		if (filter) {
			*filter = '~';
		}
		FUNC5 (NULL, NULL);
		if (ptr) {
			for (;;) {
				if (FUNC6 ()) {
					break;
				}
				eol = FUNC22 (ptr, '\n');
				if (eol) {
					*eol = '\0';
				}
				if (*ptr) {
					char *p = FUNC20 (FUNC23 (ptr), filter);
					FUNC11 (core, p);
					FUNC2 (p);
				}
				if (!eol) {
					break;
				}
				ptr = eol + 1;
			}
		}
		FUNC4 ();
		FUNC2 (str);
		FUNC2 (inp);
		break;
	}
	return 0;
}