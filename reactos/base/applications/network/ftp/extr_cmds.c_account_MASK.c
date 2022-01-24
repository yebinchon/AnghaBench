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
 char* ap ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

void FUNC4(int argc, const char *argv[])
{
	char acct[50], *FUNC5(), *ap;

	if (argc > 1) {
		++argv;
		--argc;
		(void) FUNC3(acct,*argv,49);
		acct[49] = '\0';
		while (argc > 1) {
			--argc;
			++argv;
			(void) FUNC2(acct,*argv, 49-FUNC1(acct));
		}
		ap = acct;
	}
	else {
		ap = FUNC5("Account:");
	}
	(void) FUNC0("ACCT %s", ap);
}