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
typedef  int /*<<< orphan*/  pwd2 ;
typedef  int /*<<< orphan*/  pwd1 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  pwfilename ; 
 scalar_t__ pwprompt ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  superuser_password ; 

__attribute__((used)) static void
FUNC14(void)
{
	char		pwd1[100];
	char		pwd2[100];

	if (pwprompt)
	{
		/*
		 * Read password from terminal
		 */
		FUNC10("\n");
		FUNC4(stdout);
		FUNC11("Enter new superuser password: ", pwd1, sizeof(pwd1), false);
		FUNC11("Enter it again: ", pwd2, sizeof(pwd2), false);
		if (FUNC12(pwd1, pwd2) != 0)
		{
			FUNC7(stderr, FUNC0("Passwords didn't match.\n"));
			FUNC1(1);
		}
	}
	else
	{
		/*
		 * Read password from file
		 *
		 * Ideally this should insist that the file not be world-readable.
		 * However, this option is mainly intended for use on Windows where
		 * file permissions may not exist at all, so we'll skip the paranoia
		 * for now.
		 */
		FILE	   *pwf = FUNC6(pwfilename, "r");
		int			i;

		if (!pwf)
		{
			FUNC8("could not open file \"%s\" for reading: %m",
						 pwfilename);
			FUNC1(1);
		}
		if (!FUNC5(pwd1, sizeof(pwd1), pwf))
		{
			if (FUNC3(pwf))
				FUNC8("could not read password from file \"%s\": %m",
							 pwfilename);
			else
				FUNC8("password file \"%s\" is empty",
							 pwfilename);
			FUNC1(1);
		}
		FUNC2(pwf);

		i = FUNC13(pwd1);
		while (i > 0 && (pwd1[i - 1] == '\r' || pwd1[i - 1] == '\n'))
			pwd1[--i] = '\0';
	}

	superuser_password = FUNC9(pwd1);
}