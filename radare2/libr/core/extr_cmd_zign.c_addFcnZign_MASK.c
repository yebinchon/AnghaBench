#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  zign_spaces; } ;
struct TYPE_25__ {char* name; int /*<<< orphan*/  addr; } ;
struct TYPE_24__ {TYPE_5__* anal; } ;
struct TYPE_23__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ RSpace ;
typedef  TYPE_2__ RCore ;
typedef  TYPE_3__ RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char*,char*) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC13 (char*,char*,char*) ; 
 char* FUNC14 (char const*) ; 
 char* FUNC15 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC16 (char*,int) ; 
 char* FUNC17 (char*,char) ; 
 scalar_t__ FUNC18 (char*,char*) ; 

__attribute__((used)) static void FUNC19(RCore *core, RAnalFunction *fcn, const char *name) {
	char *ptr = NULL;
	char *zignspace = NULL;
	char *zigname = NULL;
	const RSpace *curspace = FUNC10 (&core->anal->zign_spaces);
	int len = 0;

	if (name) {
		zigname = FUNC14 (name);
	} else {
		// If the user has set funtion names containing a single ':' then we assume
		// ZIGNSPACE:FUNCTION, and for now we only support the 'zg' command
		if ((ptr = FUNC17 (fcn->name, ':')) != NULL) {
			len = ptr - fcn->name;
			zignspace = FUNC16 (fcn->name, len);
			FUNC12 (&core->anal->zign_spaces, zignspace);
		} else if (curspace) {
			zigname = FUNC15 ("%s:", curspace->name);
		}
		zigname = FUNC13 (zigname, "%s", fcn->name);
	}

	FUNC1 (core, fcn, zigname);
	FUNC0 (core, fcn, zigname);
	FUNC6 (core, fcn, zigname);
	FUNC3 (core, fcn, zigname);
	FUNC5 (core, fcn, zigname);
	FUNC4 (core, fcn, zigname);
	FUNC2 (core, fcn, zigname);
	if (FUNC18 (zigname, fcn->name)) {
		FUNC9 (core->anal, zigname, fcn->name);
	}
/*
	XXX this is very slow and poorly tested
	char *comments = getFcnComments (core, fcn);
	if (comments) {
		r_sign_add_comment (core->anal, zigname, comments);
	}
*/
	FUNC8 (core->anal, zigname, fcn->addr);

	FUNC7 (zigname);
	if (zignspace) {
		FUNC11 (&core->anal->zign_spaces);
		FUNC7 (zignspace);
	}
}