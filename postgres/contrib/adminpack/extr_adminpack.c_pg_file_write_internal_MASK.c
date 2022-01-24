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
struct stat {int dummy; } ;
typedef  scalar_t__ int64 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_FILE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 

__attribute__((used)) static int64
FUNC10(text *file, text *data, bool replace)
{
	FILE	   *f;
	char	   *filename;
	int64		count = 0;

	filename = FUNC4(file, false);

	if (!replace)
	{
		struct stat fst;

		if (FUNC9(filename, &fst) >= 0)
			FUNC5(ERROR,
					(ERRCODE_DUPLICATE_FILE,
					 FUNC7("file \"%s\" exists", filename)));

		f = FUNC0(filename, "wb");
	}
	else
		f = FUNC0(filename, "ab");

	if (!f)
		FUNC5(ERROR,
				(FUNC6(),
				 FUNC7("could not open file \"%s\" for writing: %m",
						filename)));

	count = FUNC8(FUNC2(data), 1, FUNC3(data), f);
	if (count != FUNC3(data) || FUNC1(f))
		FUNC5(ERROR,
				(FUNC6(),
				 FUNC7("could not write file \"%s\": %m", filename)));

	return (count);
}