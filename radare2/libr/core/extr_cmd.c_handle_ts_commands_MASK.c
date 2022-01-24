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
typedef  int ut32 ;
typedef  int /*<<< orphan*/  TSNode ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(RCore *core, const char *cstr, TSNode node, bool log) {
	ut32 child_count = FUNC4 (node);
	bool res = true;
	int i;

	FUNC0 ("commands with %d childs\n", child_count);
	for (i = 0; i < child_count; ++i) {
		TSNode command = FUNC3 (node, i);
		res &= FUNC2 (core, cstr, command, log);
		if (!res) {
			FUNC1 ("Error while parsing command: %s\n", cstr);
			return false;
		}
	}
	return res;
}