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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (char const*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const**) ; 
 char* home ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC6(int argc, const char *argv[])
{
	char buf[MAXPATHLEN];

	if (argc < 2)
		argc++, argv[1] = home;
	if (argc != 2) {
		FUNC5("usage:%s local-directory\n", argv[0]);
		(void) FUNC1(stdout);
		code = -1;
		return;
	}
	if (!FUNC3(&argv[1])) {
		code = -1;
		return;
	}
	if (FUNC0(argv[1]) < 0) {
		FUNC4(argv[1]);
		code = -1;
		return;
	}
	FUNC5("Local directory now %s\n", FUNC2(buf,sizeof(buf)));
	(void) FUNC1(stdout);
	code = 0;
}