#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* cons; } ;
struct TYPE_5__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  R2_HOME_THEMES ; 
 int /*<<< orphan*/  R2_THEMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* curtheme ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (void*,char*) ; 
 char* FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC10 (char*) ; 
 void* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

__attribute__((used)) static bool FUNC13(RCore *core, const char *_arg) {
	bool failed = false;
	char *path;
	if (!_arg || !*_arg) {
		return false;
	}
	if (!FUNC6 (_arg, "default", FUNC12 (_arg))) {
		curtheme = FUNC11 (_arg);
		FUNC4 (core->cons->context);
		return true;
	}
	char *arg = FUNC11 (_arg);

	char *tmp = FUNC9 (FUNC0 (R2_HOME_THEMES, "%s"), arg);
	char *home = tmp ? FUNC8 (tmp) : NULL;
	FUNC2 (tmp);

	tmp = FUNC9 (FUNC0 (R2_THEMES, "%s"), arg);
	path = tmp ? FUNC10 (tmp) : NULL;
	FUNC2 (tmp);

	if (!FUNC3 (core, home)) {
		if (FUNC3 (core, path)) {
			curtheme = FUNC7 (curtheme, arg);
		} else {
			if (FUNC3 (core, arg)) {
				curtheme = FUNC7 (curtheme, arg);
			} else {
				char *absfile = FUNC5 (arg);
				FUNC1 ("eco: cannot open colorscheme profile (%s)\n", absfile);
				FUNC2 (absfile);
				failed = true;
			}
		}
	}
	FUNC2 (home);
	FUNC2 (path);
	FUNC2 (arg);
	return !failed;
}