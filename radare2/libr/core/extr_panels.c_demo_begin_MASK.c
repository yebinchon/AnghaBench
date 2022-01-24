#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RCore ;
typedef  int /*<<< orphan*/  RConsCanvas ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10 (RCore *core, RConsCanvas *can) {
	char *s = FUNC1 (can);
	if (s) {
		// TODO drop utf8!!
		FUNC7 (s, NULL, NULL, -1);
		int i, h, w = FUNC4 (&h);
		for (i = 0; i < 40; i+= (1 + (i/30))) {
			int H = i * ((double)h / 40);
			char *r = FUNC8 (s, w, H);
			FUNC2 ();
			FUNC5 (0, (h / 2) - (H / 2));
			FUNC6 (r);
			FUNC3 ();
			FUNC0 (r);
			FUNC9 (3000);
		}
		FUNC0 (s);
	}
}