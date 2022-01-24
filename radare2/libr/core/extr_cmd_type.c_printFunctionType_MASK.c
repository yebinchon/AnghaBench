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
typedef  int /*<<< orphan*/  PJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char const*) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,...) ; 
 char* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC16 (char*,char) ; 

__attribute__((used)) static void FUNC17(RCore *core, const char *input) {
	Sdb *TDB = core->anal->sdb_types;
	PJ *pj = FUNC6 ();
	if (!pj) {
		return;
	}
	FUNC7 (pj);
	char *res = FUNC15 (TDB, NULL, -1, FUNC12 ("func.%s.args", input));
	const char *name = FUNC10 (input);
	int i, args = FUNC14 (TDB, FUNC12 ("func.%s.args", name), 0);
	FUNC5 (pj, "name", name);
	FUNC5 (pj, "ret", FUNC11 (TDB, FUNC12 ("func.%s.ret", name), 0));
	FUNC4 (pj, "args");
	FUNC1 (pj);
	for (i = 0; i < args; i++) {
		char *type = FUNC13 (TDB, FUNC12 ("func.%s.arg.%d", name, i), 0);
		if (!type) {
			continue;
		}
		char *name = FUNC16 (type, ',');
		if (name) {
			*name++ = 0;
		}
		FUNC7 (pj);
		FUNC5 (pj, "type", type);
		if (name) {
			FUNC5 (pj, "name", name);
		} else {
			FUNC5 (pj, "name", "(null)");
		}
		FUNC2 (pj);
	}
	FUNC2 (pj);
	FUNC2 (pj);
	FUNC9 ("%s", FUNC8 (pj));
	FUNC3 (pj);
	FUNC0 (res);
}