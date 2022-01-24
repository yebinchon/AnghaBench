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

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 

int FUNC4(void *user) {
	RCore *core = (RCore *)user;
	for (;;) {
		char *s = FUNC0 (core, "> ");
		if (!s || !*s) {
			FUNC1 (s);
			break;
		}
		FUNC3 (core, "? %s", s);
		FUNC2 ();
		FUNC1 (s);
	}
	return 0;
}