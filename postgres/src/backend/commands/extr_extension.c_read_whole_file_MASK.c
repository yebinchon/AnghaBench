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
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MaxAllocSize ; 
 int /*<<< orphan*/  PG_BINARY_R ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (size_t) ; 
 scalar_t__ FUNC9 (char const*,struct stat*) ; 

__attribute__((used)) static char *
FUNC10(const char *filename, int *length)
{
	char	   *buf;
	FILE	   *file;
	size_t		bytes_to_read;
	struct stat fst;

	if (FUNC9(filename, &fst) < 0)
		FUNC2(ERROR,
				(FUNC4(),
				 FUNC5("could not stat file \"%s\": %m", filename)));

	if (fst.st_size > (MaxAllocSize - 1))
		FUNC2(ERROR,
				(FUNC3(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC5("file \"%s\" is too large", filename)));
	bytes_to_read = (size_t) fst.st_size;

	if ((file = FUNC0(filename, PG_BINARY_R)) == NULL)
		FUNC2(ERROR,
				(FUNC4(),
				 FUNC5("could not open file \"%s\" for reading: %m",
						filename)));

	buf = (char *) FUNC8(bytes_to_read + 1);

	*length = FUNC7(buf, 1, bytes_to_read, file);

	if (FUNC6(file))
		FUNC2(ERROR,
				(FUNC4(),
				 FUNC5("could not read file \"%s\": %m", filename)));

	FUNC1(file);

	buf[*length] = '\0';
	return buf;
}