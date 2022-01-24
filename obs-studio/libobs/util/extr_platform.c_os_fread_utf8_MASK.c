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
typedef  size_t off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 size_t FUNC3 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

size_t FUNC6(FILE *file, char **pstr)
{
	size_t size = 0;
	size_t len = 0;

	*pstr = NULL;

	FUNC4(file, 0, SEEK_END);
	size = (size_t)FUNC5(file);

	if (size > 0) {
		char bom[3];
		char *utf8str;
		off_t offset;

		bom[0] = 0;
		bom[1] = 0;
		bom[2] = 0;

		/* remove the ghastly BOM if present */
		FUNC4(file, 0, SEEK_SET);
		size_t size_read = FUNC3(bom, 1, 3, file);
		(void)size_read;

		offset = (FUNC0(bom, "\xEF\xBB\xBF", 3) == 0) ? 3 : 0;

		size -= offset;
		if (size == 0)
			return 0;

		utf8str = FUNC2(size + 1);
		FUNC4(file, offset, SEEK_SET);

		size = FUNC3(utf8str, 1, size, file);
		if (size == 0) {
			FUNC1(utf8str);
			return 0;
		}

		utf8str[size] = 0;

		*pstr = utf8str;
	}

	return len;
}