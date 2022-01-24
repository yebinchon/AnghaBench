#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  config; int /*<<< orphan*/  panels; } ;
struct TYPE_8__ {TYPE_1__* view; } ;
struct TYPE_7__ {int refresh; } ;
typedef  TYPE_2__ RPanel ;
typedef  TYPE_3__ RCore ;
typedef  int /*<<< orphan*/  RConsCanvas ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int firstRun ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC12 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14 (RCore *core, RConsCanvas *can) {
	bool utf8 = FUNC3 (core->config, "scr.utf8");
	FUNC4 (core->config, "scr.utf8", 0);
	RPanel *cur = FUNC0 (core->panels);
	cur->view->refresh = true;
	firstRun= false;
	FUNC1 (core);
	firstRun= true;
	FUNC4 (core->config, "scr.utf8", utf8);
	char *s = FUNC5 (can);
	if (s) {
		// TODO drop utf8!!
		FUNC11 (s, NULL, NULL, -1);
		int i, h, w = FUNC8 (&h);
		for (i = h; i > 0; i--) {
			int H = i;
			char *r = FUNC12 (s, w, H);
			FUNC6 ();
			FUNC9 (0, (h / 2) - (H / 2)); // center
			//r_cons_gotoxy (0, h-H); // bottom
			FUNC10 (r);
			FUNC7 ();
			FUNC2 (r);
			FUNC13 (3000);
		}
		FUNC13 (100000);
		FUNC2 (s);
	}
}