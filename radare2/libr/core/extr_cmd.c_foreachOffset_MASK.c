#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_5__ {int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC5 (char const*,char) ; 
 char* FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(RCore *core, const char *_cmd, const char *each) {
	char *cmd = FUNC6 (_cmd);
	char *nextLine = NULL;
	ut64 addr;
	/* foreach list of items */
	while (each) {
		// skip spaces
		while (*each == ' ') {
			each++;
		}
		// stahp if empty string
		if (!*each) {
			break;
		}
		// find newline
		char *nl = FUNC5 (each, '\n');
		if (nl) {
			*nl = 0;
			nextLine = nl + 1;
		} else {
			nextLine = NULL;
		}
		// chop comment in line
		nl = FUNC5 (each, '#');
		if (nl) {
			*nl = 0;
		}
		// space separated numbers
		while (each && *each) {
			// find spaces
			while (*each == ' ') {
				each++;
			}
			char *str = FUNC5 (each, ' ');
			if (str) {
				*str = '\0';
				addr = FUNC4 (core->num, each);
				*str = ' ';
				each = str + 1;
			} else {
				if (!*each) {
					break;
				}
				addr = FUNC4 (core->num, each);
				each = NULL;
			}
			FUNC3 (core, addr, 1);
			FUNC2 (core, cmd, 0);
			FUNC1 ();
		}
		each = nextLine;
	}
	FUNC0 (cmd);
}