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
 size_t NONE_SELECTED ; 
 size_t PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char const*,char const*) ; 
 char** messages ; 
 size_t FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*) ; 
 char* pselbuf ; 
 size_t selbufpos ; 
 size_t FUNC4 (char*) ; 
 int FUNC5 (char const*,char const*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC8(char *suffix, char *path, char *buf, int *presel, int type)
{
	int count = 0;
	char *pbuf = pselbuf, *fname;
	size_t pos = 0, len, r;
	int (*link_fn)(const char *, const char *) = NULL;

	/* Check if selection is empty */
	if (!selbufpos) {
		FUNC3(messages[NONE_SELECTED], presel);
		return -1;
	}

	FUNC0();

	if (type == 's') /* symbolic link */
		link_fn = &symlink;
	else /* hard link */
		link_fn = &link;

	while (pos < selbufpos) {
		len = FUNC4(pbuf);
		fname = FUNC6(pbuf);
		r = FUNC2(path, fname, buf);
		FUNC7(buf + r - 1, suffix, PATH_MAX - r - 1);

		if (!link_fn(pbuf, buf))
			++count;

		pos += len + 1;
		pbuf += len + 1;
	}

	if (!count)
		FUNC3("none created", presel);

	return count;
}