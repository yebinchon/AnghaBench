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

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC1 (int,char const**) ; 
 int FUNC2 (int,char const**) ; 
 int FUNC3 (int,char const**) ; 
 int FUNC4 (int,char const**) ; 
 int FUNC5 (int,char const**) ; 
 int FUNC6 (int,char const**) ; 
 char* maccalc_name ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int argc, const char *argv[])
{
	int (*op)(int argc, const char *argv[]);
	int ret;

	maccalc_name = (char *) argv[0];

	if (argc < 2) {
		FUNC8();
		return EXIT_FAILURE;
	}

	if (FUNC7(argv[1], "add") == 0) {
		op = maccalc_do_add;
	} else if (FUNC7(argv[1], "and") == 0) {
		op = maccalc_do_and;
	} else if (FUNC7(argv[1], "or") == 0) {
		op = maccalc_do_or;
	} else if (FUNC7(argv[1], "xor") == 0) {
		op = maccalc_do_xor;
	} else if (FUNC7(argv[1], "mac2bin") == 0) {
		op = maccalc_do_mac2bin;
	} else if (FUNC7(argv[1], "bin2mac") == 0) {
		op = maccalc_do_bin2mac;
	} else {
		FUNC0(stderr, "unknown command '%s'\n", argv[1]);
		FUNC8();
		return EXIT_FAILURE;
	}

	argc -= 2;
	argv += 2;

	ret = op(argc, argv);
	if (ret)
		return EXIT_FAILURE;

	return EXIT_SUCCESS;
}