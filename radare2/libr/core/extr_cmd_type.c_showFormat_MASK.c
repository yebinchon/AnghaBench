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
struct TYPE_4__ {int /*<<< orphan*/  sdb_types; } ;
typedef  TYPE_2__ RCore ;
typedef  int /*<<< orphan*/  PJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 

__attribute__((used)) static void FUNC13(RCore *core, const char *name, int mode) {
	const char *isenum = FUNC11 (core->anal->sdb_types, name, 0);
	if (isenum && !FUNC12 (isenum, "enum")) {
		FUNC0 ("IS ENUM\n");
	} else {
		char *fmt = FUNC10 (core->anal->sdb_types, name);
		if (fmt) {
			FUNC9 (fmt);
			if (mode == 'j') {
				PJ *pj = FUNC5 ();
				if (!pj) {
					return;
				}
				FUNC6 (pj);
				FUNC4 (pj, "name", name);
				FUNC4 (pj, "format", fmt);
				FUNC2 (pj);
				FUNC8 ("%s", FUNC7 (pj));
				FUNC3 (pj);
			} else {
				if (mode) {
					FUNC8 ("pf.%s %s\n", name, fmt);
				} else {
					FUNC8 ("pf %s\n", fmt);
				}
			}
			FUNC1 (fmt);
		} else {
			FUNC0 ("Cannot find '%s' type\n", name);
		}
	}
}