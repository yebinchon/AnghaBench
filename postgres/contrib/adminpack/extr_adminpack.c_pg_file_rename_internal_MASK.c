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
typedef  int /*<<< orphan*/  text ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_FILE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FILE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  W_OK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static bool
FUNC6(text *file1, text *file2, text *file3)
{
	char	   *fn1,
			   *fn2,
			   *fn3;
	int			rc;

	fn1 = FUNC1(file1, false);
	fn2 = FUNC1(file2, false);

	if (file3 == NULL)
		fn3 = NULL;
	else
		fn3 = FUNC1(file3, false);

	if (FUNC0(fn1, W_OK) < 0)
	{
		FUNC2(WARNING,
				(FUNC3(),
				 FUNC4("file \"%s\" is not accessible: %m", fn1)));

		return false;
	}

	if (fn3 && FUNC0(fn2, W_OK) < 0)
	{
		FUNC2(WARNING,
				(FUNC3(),
				 FUNC4("file \"%s\" is not accessible: %m", fn2)));

		return false;
	}

	rc = FUNC0(fn3 ? fn3 : fn2, W_OK);
	if (rc >= 0 || errno != ENOENT)
	{
		FUNC2(ERROR,
				(ERRCODE_DUPLICATE_FILE,
				 FUNC4("cannot rename to target file \"%s\"",
						fn3 ? fn3 : fn2)));
	}

	if (fn3)
	{
		if (FUNC5(fn2, fn3) != 0)
		{
			FUNC2(ERROR,
					(FUNC3(),
					 FUNC4("could not rename \"%s\" to \"%s\": %m",
							fn2, fn3)));
		}
		if (FUNC5(fn1, fn2) != 0)
		{
			FUNC2(WARNING,
					(FUNC3(),
					 FUNC4("could not rename \"%s\" to \"%s\": %m",
							fn1, fn2)));

			if (FUNC5(fn3, fn2) != 0)
			{
				FUNC2(ERROR,
						(FUNC3(),
						 FUNC4("could not rename \"%s\" back to \"%s\": %m",
								fn3, fn2)));
			}
			else
			{
				FUNC2(ERROR,
						(ERRCODE_UNDEFINED_FILE,
						 FUNC4("renaming \"%s\" to \"%s\" was reverted",
								fn2, fn3)));
			}
		}
	}
	else if (FUNC5(fn1, fn2) != 0)
	{
		FUNC2(ERROR,
				(FUNC3(),
				 FUNC4("could not rename \"%s\" to \"%s\": %m", fn1, fn2)));
	}

	return true;
}