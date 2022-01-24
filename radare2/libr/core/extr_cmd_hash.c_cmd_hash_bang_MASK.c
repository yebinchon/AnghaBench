#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * cur; } ;
struct TYPE_9__ {TYPE_2__* lang; } ;
typedef  int /*<<< orphan*/  RLangPlugin ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int,char**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 char** FUNC9 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC10 (char**) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 char* FUNC12 (char const*,char*) ; 

__attribute__((used)) static int FUNC13 (RCore *core, const char *input) {
	if (FUNC8 (0)) {
		FUNC0 ("hashbang disabled in sandbox mode\n");
		return false;
	}
	int ac;
	char **av = FUNC9 (input + 1, &ac);
	if (ac > 0) {
		RLangPlugin *p = FUNC2 (core->lang, av[0]);
		if (p) {
			// I see no point in using r_lang_use here, as we already haz a ptr to the pluging in our handz
			// Maybe add r_lang_use_plugin in r_lang api?
			core->lang->cur = p;
			if (ac > 1) {
				if (!FUNC11 (av[1], "-e")) {
					char *run_str = FUNC12 (input + 2, "-e") + 2;
					FUNC6 (core->lang, run_str);
				} else {
					if (FUNC7 (core->lang, ac - 1, &av[1])) {
						FUNC5 (core->lang, av[1]);
					} else {
						char *run_str = FUNC12 (input + 2, av[1]);
						FUNC5 (core->lang, run_str);
					}
				}
			} else {
				if (FUNC1 ()) {
					FUNC4 (core->lang);
				} else {
					FUNC0 ("Error: scr.interactive required to run the rlang prompt\n");
				}
			}
		} else if (av[0][0]=='?' || av[0][0]=='*') {
			FUNC3 (core->lang);
		}
	} else {
		FUNC3 (core->lang);
	}
	FUNC10(av);
	return true;
}