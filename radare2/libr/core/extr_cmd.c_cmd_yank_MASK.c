#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_20__ {int /*<<< orphan*/  value; } ;
struct TYPE_19__ {int /*<<< orphan*/  yank_buf; TYPE_2__* num; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  help_msg_y ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char*) ; 
 char* FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC20 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,char const*) ; 
 char* FUNC23 (char const*) ; 
 char* FUNC24 (char const*) ; 
 int FUNC25 (char const*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 

__attribute__((used)) static int FUNC27(void *data, const char *input) {
	ut64 n;
	RCore *core = (RCore *)data;
	switch (input[0]) {
	case ' ': // "y "
		FUNC8 (core, core->offset, FUNC22 (core->num, input + 1));
		break;
	case 'l': // "yl"
		core->num->value = FUNC3 (core->yank_buf);
		break;
	case 'y': // "yy"
		while (input[1] == ' ') {
			input++;
		}
		n = input[1]? FUNC22 (core->num, input + 1): core->offset;
		FUNC16 (core, n, 0);
		break;
	case 'x': // "yx"
		FUNC14 (core, FUNC22 (core->num, input + 1));
		break;
	case 'z': // "yz"
		FUNC18 (core, core->offset, FUNC22 (core->num, input + 1));
		break;
	case 'w': // "yw" ... we have yf which makes more sense than 'w'
		switch (input[1]) {
		case ' ':
			FUNC17 (core, 0, (const ut8*)input + 2, FUNC25 (input + 2));
			break;
		case 'x':
			if (input[2] == ' ') {
				char *out = FUNC24 (input + 3);
				int len = FUNC21 (input + 3, (ut8*)out);
				if (len > 0) {
					FUNC17 (core, core->offset, (const ut8*)out, len);
				} else {
					FUNC0 ("Invalid length\n");
				}
				FUNC1 (out);
			} else {
				FUNC0 ("Usage: ywx [hexpairs]\n");
			}
			// r_core_yank_write_hex (core, input + 2);
			break;
		default:
			FUNC0 ("Usage: ywx [hexpairs]\n");
			break;
		}
		break;
	case 'p': // "yp"
		FUNC9 (core, FUNC22 (core->num, input + 1));
		break;
	case 's': // "ys"
		FUNC10 (core, FUNC22 (core->num, input + 1));
		break;
	case 't': // "wt"
		if (input[1] == 'f') { // "wtf"
			ut64 tmpsz;
			const char *file = FUNC23 (input + 2);
			const ut8 *tmp = FUNC2 (core->yank_buf, &tmpsz);
			if (!FUNC20 (file, tmp, tmpsz, false)) {
				FUNC0 ("Cannot dump to '%s'\n", file);
			}
		} else if (input[1] == ' ') {
			FUNC19 (core, input + 1);
		} else {
			FUNC0 ("Usage: wt[f] [arg] ..\n");
		}
		break;
	case 'f': // "yf"
		switch (input[1]) {
		case ' ': // "yf"
			FUNC13 (core, input + 1);
			break;
		case 'x': // "yfx"
			FUNC15 (core, input + 2);
			break;
		case 'a': // "yfa"
			FUNC12 (core, input + 2);
			break;
		default:
			FUNC0 ("Usage: yf[xa] [arg]\n");
			FUNC0 ("yf [file]     - copy blocksize from file into the clipboard\n");
			FUNC0 ("yfa [path]    - yank the whole file\n");
			FUNC0 ("yfx [hexpair] - yank from hexpair string\n");
			break;
		}
		break;
	case '!': // "y!"
		{
			char *sig = FUNC5 (core, "y*");
			if (!sig || !*sig) {
				FUNC1 (sig);
				sig = FUNC24 ("wx 10203040");
			}
			char *data = FUNC7 (core, NULL, sig);
			(void) FUNC26 (data, ";\n");
			FUNC6 (core, "y%s", data);
			FUNC1 (sig);
			FUNC1 (data);
		}
		break;
	case '*': // "y*"
	case 'j': // "yj"
	case 'q': // "yq"
	case '\0': // "y"
		FUNC11 (core, 0, input[0]);
		break;
	default:
		FUNC4 (core, help_msg_y);
		break;
	}
	return true;
}