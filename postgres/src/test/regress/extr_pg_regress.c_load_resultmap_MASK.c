#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {struct TYPE_4__* next; void* resultfile; void* type; void* test; } ;
typedef  TYPE_1__ _resultmap ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int MAXPGPATH ; 
 char* FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  host_platform ; 
 char* inputdir ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 TYPE_1__* FUNC7 (int) ; 
 void* FUNC8 (char*) ; 
 char* progname ; 
 TYPE_1__* resultmap ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (char*,char) ; 
 char* FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (char*) ; 

__attribute__((used)) static void
FUNC14(void)
{
	char		buf[MAXPGPATH];
	FILE	   *f;

	/* scan the file ... */
	FUNC9(buf, sizeof(buf), "%s/resultmap", inputdir);
	f = FUNC4(buf, "r");
	if (!f)
	{
		/* OK if it doesn't exist, else complain */
		if (errno == ENOENT)
			return;
		FUNC5(stderr, FUNC0("%s: could not open file \"%s\" for reading: %s\n"),
				progname, buf, FUNC11(errno));
		FUNC1(2);
	}

	while (FUNC3(buf, sizeof(buf), f))
	{
		char	   *platform;
		char	   *file_type;
		char	   *expected;
		int			i;

		/* strip trailing whitespace, especially the newline */
		i = FUNC13(buf);
		while (i > 0 && FUNC6((unsigned char) buf[i - 1]))
			buf[--i] = '\0';

		/* parse out the line fields */
		file_type = FUNC10(buf, ':');
		if (!file_type)
		{
			FUNC5(stderr, FUNC0("incorrectly formatted resultmap entry: %s\n"),
					buf);
			FUNC1(2);
		}
		*file_type++ = '\0';

		platform = FUNC10(file_type, ':');
		if (!platform)
		{
			FUNC5(stderr, FUNC0("incorrectly formatted resultmap entry: %s\n"),
					buf);
			FUNC1(2);
		}
		*platform++ = '\0';
		expected = FUNC10(platform, '=');
		if (!expected)
		{
			FUNC5(stderr, FUNC0("incorrectly formatted resultmap entry: %s\n"),
					buf);
			FUNC1(2);
		}
		*expected++ = '\0';

		/*
		 * if it's for current platform, save it in resultmap list. Note: by
		 * adding at the front of the list, we ensure that in ambiguous cases,
		 * the last match in the resultmap file is used. This mimics the
		 * behavior of the old shell script.
		 */
		if (FUNC12(host_platform, platform))
		{
			_resultmap *entry = FUNC7(sizeof(_resultmap));

			entry->test = FUNC8(buf);
			entry->type = FUNC8(file_type);
			entry->resultfile = FUNC8(expected);
			entry->next = resultmap;
			resultmap = entry;
		}
	}
	FUNC2(f);
}