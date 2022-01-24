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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 size_t FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (char*,size_t,char**) ; 

size_t FUNC6(FILE *file, char **pstr)
{
	size_t size = 0;
	size_t len = 0;

	FUNC3(file, 0, SEEK_END);
	size = (size_t)FUNC4(file);
	*pstr = NULL;

	if (size > 0) {
		char *mbstr = FUNC1(size + 1);

		FUNC3(file, 0, SEEK_SET);
		size = FUNC2(mbstr, 1, size, file);
		if (size == 0) {
			FUNC0(mbstr);
			return 0;
		}

		mbstr[size] = 0;
		len = FUNC5(mbstr, size, pstr);
		FUNC0(mbstr);
	}

	return len;
}