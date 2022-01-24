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
struct TYPE_4__ {int /*<<< orphan*/ * sdb_types; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char) ; 

__attribute__((used)) static void FUNC9(RCore *core, const char *input) {
	Sdb *TDB = core->anal->sdb_types;
	char *res = FUNC7 (TDB, NULL, -1, FUNC4 ("func.%s.args", input));
	const char *name = FUNC2 (input);
	int i, args = FUNC6 (TDB, FUNC4 ("func.%s.args", name), 0);
	const char *ret = FUNC3 (TDB, FUNC4 ("func.%s.ret", name), 0);
	if (!ret || !name) {
		// missing function name specified
		return;
	}

	FUNC1 ("%s %s (", ret, name);
	for (i = 0; i < args; i++) {
		char *type = FUNC5 (TDB, FUNC4 ("func.%s.arg.%d", name, i), 0);
		char *name = FUNC8 (type, ',');
		if (name) {
			*name++ = 0;
		}
		FUNC1 ("%s%s %s", i==0? "": ", ", type, name);
	}
	FUNC1 (");\n");
	FUNC0 (res);
}