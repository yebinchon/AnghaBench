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
 int code ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

void FUNC6(int argc, const char *argv[])
{
	const char *cmd;

	if (argc < 2)
		argc++, argv[1] = NULL;
	if (argc < 3)
		argc++, argv[2] = "-";
	if (argc > 3) {
		FUNC3("usage: %s remote-directory local-file\n", argv[0]);
		(void) FUNC1(stdout);
		code = -1;
		return;
	}
	cmd = argv[0][0] == 'n' ? "NLST" : "LIST";
//	cmd = argv[0][0] == 'n' ? "NLST -CF" : "NLST -CF";
	if (FUNC5(argv[2], "-") && !FUNC2(&argv[2])) {
		code = -1;
		return;
	}
	if (FUNC5(argv[2], "-") && *argv[2] != '|')
		if (!FUNC2(&argv[2]) || !FUNC0("output to local-file:", argv[2])) {
			code = -1;
			return;
	}
	FUNC4(cmd, argv[2], argv[1], "w", 0);
}