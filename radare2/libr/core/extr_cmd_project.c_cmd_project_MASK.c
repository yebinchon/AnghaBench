#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char ut8 ;
struct TYPE_13__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  R_CORE_PRJ_ALL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  help_msg_P ; 
 int /*<<< orphan*/  help_msg_Pn ; 
 char* FUNC4 (char const*,int) ; 
 char* FUNC5 (char*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char const*) ; 
 char* FUNC13 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char const) ; 
 char* FUNC15 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*,int /*<<< orphan*/ ,int) ; 
 char* FUNC20 (char*,int*) ; 
 int /*<<< orphan*/ * FUNC21 (char*,char*) ; 
 char* FUNC22 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char const*,char*) ; 
 void* FUNC24 (char const*,char) ; 
 char* FUNC25 (char const*) ; 
 int /*<<< orphan*/  FUNC26 (char const*) ; 
 int /*<<< orphan*/  FUNC27 (char*,char const*) ; 

__attribute__((used)) static int FUNC28(void *data, const char *input) {
	RCore *core = (RCore *) data;
	const char *file, *arg;
	const char *fileproject = FUNC6 (core->config, "prj.name");
	char *str = NULL;

	if (!input) {
		return false;
	}
	str = FUNC25 (fileproject);
	arg = FUNC24 (input, ' ');
	if (arg) {
		arg++;
	} else {
		if (*input) {
			arg = input + 1;
			if (*arg == '&') {
				arg++;
			}
		}
	}
	file = arg;
	switch (input[0]) {
	case 'c':
		if (input[1] == ' ') {
			FUNC10 (core, input + 2);
		} else {
			FUNC0 ("Usage: Pc [prjname]\n");
		}
		break;
	case 'o':
		//	if (r_file_is_regular (file))
		if (input[1] == '&') {
			FUNC9 (core, "& Po %s", file);
		} else if (input[1]) {
			FUNC16 (core, file, false);
		} else {
			if (file && *file) {
				FUNC7 (file);
			}
		}
		break;
	case 'd':
	case '-':
		FUNC11 (core, file);
		break;
	case 's':
		if (!file || !file[0]) { /* if no argument specified use current project */
			file = str;
		}
		if (FUNC17 (core, file)) {
			FUNC7 (file);
		}
		break;
	case 'S':
		if (input[1] == ' ') {
			FUNC18 (core, input + 2, R_CORE_PRJ_ALL);
		} else {
			FUNC0 ("Usage: PS [file]\n");
		}
		break;
	case 'n': // "Pn"
		if (input[1] == '?') {
			FUNC8 (core, help_msg_Pn);
		} else if (!fileproject || !*fileproject) {
			FUNC0 ("No project\n");
		} else {
			switch (input[1]) {
			case '-': // "Pn-"
				/* remove lines containing specific words */
			{
				FILE *fd = FUNC21 (str, "w");
				if (!fd) {
					FUNC0 ("Cannot open %s\n", str);
				} else {
					char *str = FUNC15 (core, fileproject);
					char *data = FUNC20 (str, NULL);
					int del = 0;
					if (data) {
						char *ptr, *nl;
						for (ptr = data; ptr; ptr = nl) {
							nl = FUNC24 (ptr, '\n');
							if (nl) {
								*nl++ = 0;
								if (FUNC27 (ptr, input + 2)) {
									del++;
								} else {
									FUNC2 (fd, "%s\n", ptr);
								}
							}
						}
						FUNC3 (data);
					}
					if (del > 0) {
						FUNC0 ("Deleted %d lines\n", del);
					}
					FUNC3 (str);
					FUNC1 (fd);
				}
			}
			break;
			case ' ': // "Pn "
				if (input[2] == '-') {
					char *str = FUNC15 (core, fileproject);
					// edit with cfg.editor
					const char *editor = FUNC6 (core->config, "cfg.editor");
					if (str && *str && editor && *editor) {
						FUNC23 ("%s %s", editor, str);
					} else {
						FUNC0 ("No cfg.editor configured\n");
					}
					FUNC3 (str);
				} else {
					// char *str = r_core_project_notes_file (core, fileproject);
					// append line to project notes
					char *str = FUNC15 (core, fileproject);
					char *data = FUNC20 (str, NULL);
					FILE *fd = FUNC21 (str, "a");
					if (fd) {
						FUNC2 (fd, "%s\n", input + 2);
						FUNC1 (fd);
					}
					FUNC3 (str);
					FUNC3 (data);
				}
				break;
			case '+': // "Pn+"
				{
					char *str = FUNC15 (core, fileproject);
					char *data = FUNC20 (str, NULL);
					data = FUNC22 (data, input + 2);
					data = FUNC22 (data, "\n");
					FUNC19 (str, (const ut8*)data, FUNC26 (data), false);
					FUNC3 (data);
					FUNC3 (str);
				}
				break;
			case 'j': // "Pnj"
				if (!input[2]) {
					int len = 0;
					/* get base64 string */
					char *str = FUNC15 (core, fileproject);
					if (str) {
						char *data = FUNC20 (str, &len);
						char *res = FUNC5 (data, len);
						if (res) {
							FUNC7 (res);
							FUNC3 (res);
						}
						FUNC3 (data);
						FUNC3 (str);
					}
				} else if (input[2] == ' ') {
					/* set base64 string */
					ut8 *data = FUNC4 (input + 3, -1);
					if (data) {
						char *str = FUNC15 (core, fileproject);
						if (str) {
							FUNC19 (str, data, FUNC26 ((const char *) data), 0);
							FUNC3 (str);
						}
						FUNC3 (data);
					}
				} else {
					FUNC0 ("Usage: `Pnj` or `Pnj ...`\n");
				}
				break;
			case 'x': // "Pnx"
				FUNC12 (core, fileproject);
				break;
			case 0: // "Pn"
			{
				char *str = FUNC15 (core, fileproject);
				char *data = FUNC20 (str, NULL);
				if (data) {
					FUNC7 (data);
					FUNC3 (data);
				}
				FUNC3 (str);
			}
			break;
			}
		}
		break;
	case 'i':
		if (file && *file) {
			char *prjName = FUNC13 (core, file);
			FUNC7 (prjName);
			FUNC3 (prjName);
		}
		break;
	case 0:
	case 'j':
		FUNC14 (core, input[0]);
		break;
	default:
		FUNC8 (core, help_msg_P);
		break;
	}
	FUNC3 (str);
	return true;
}