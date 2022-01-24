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
typedef  int /*<<< orphan*/  TSTree ;
typedef  int /*<<< orphan*/  TSParser ;
typedef  int /*<<< orphan*/  TSNode ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC12(RCore *core, const char *cstr, bool log) {
	TSParser *parser = FUNC7 ();

	FUNC9 (parser, FUNC4 ());

	TSTree *tree = FUNC8 (parser, NULL, cstr, FUNC3 (cstr));
	TSNode root = FUNC11 (tree);
	bool res = false;
	if (FUNC2 (root) && !FUNC5 (root)) {
		res = FUNC1 (core, cstr, root, log);
	} else {
		FUNC0 ("Error while parsing command: `%s`\n", cstr);
	}

	FUNC10 (tree);
	FUNC6 (parser);
	return res;
}