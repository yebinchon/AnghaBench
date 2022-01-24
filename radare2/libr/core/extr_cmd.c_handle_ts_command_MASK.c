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
typedef  int /*<<< orphan*/  TSNode ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC8(RCore *core, const char *cstr, TSNode node, bool log) {
	bool ret = false;

	if (log) {
		FUNC6 (cstr);
	}
	if (FUNC3 (node)) {
		ret = FUNC0 (core, cstr, node);
	} else if (FUNC5 (node)) {
		ret = FUNC2 (core, cstr, node, log);
	} else if (FUNC4 (node)) {
		ret = FUNC1 (core, cstr, node, log);
	}
	/* run pending analysis commands */
	FUNC7 (core);
	return ret;
}