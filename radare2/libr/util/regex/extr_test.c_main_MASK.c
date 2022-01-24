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
typedef  int /*<<< orphan*/  RRegex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(int argc, char **argv) {
	const char *needle = "^hi";
	const char *haystack_1 = "patata";
	const char *haystack_2 = "hillow";
	if (argc>3) {
		needle = argv[1];
		haystack_1 = argv[2];
		haystack_2 = argv[3];
	} else FUNC0 ("Using default values\n");
	RRegex *rx = FUNC3 (needle, "");
	if (rx) {
		int res = FUNC1 (rx, haystack_1, 0, 0, 0);
		FUNC0 ("result (%s) = %d\n", haystack_1, res);
		res = FUNC1 (rx, haystack_2, 0, 0, 0);
		FUNC0 ("result (%s) = %d\n", haystack_2, res);
		FUNC2 (rx);
	} else FUNC0 ("oops, cannot compile regexp\n");
	FUNC4();
	return 0;
}