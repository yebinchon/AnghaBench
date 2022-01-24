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
 int ERANGE ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 size_t MAXPGPATH ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC12 (char const*) ; 
 char* FUNC13 (int) ; 
 int FUNC14 (char const*) ; 

char *
FUNC15(const char *path)
{
	char	   *new;

	/* Returning null for null input is convenient for some callers */
	if (path == NULL)
		return NULL;

	if (!FUNC9(path))
	{
		char	   *buf;
		size_t		buflen;

		buflen = MAXPGPATH;
		for (;;)
		{
			buf = FUNC10(buflen);
			if (!buf)
			{
#ifndef FRONTEND
				FUNC3(ERROR,
						(FUNC4(ERRCODE_OUT_OF_MEMORY),
						 FUNC5("out of memory")));
#else
				fprintf(stderr, _("out of memory\n"));
				return NULL;
#endif
			}

			if (FUNC8(buf, buflen))
				break;
			else if (errno == ERANGE)
			{
				FUNC7(buf);
				buflen *= 2;
				continue;
			}
			else
			{
				int			save_errno = errno;

				FUNC7(buf);
				errno = save_errno;
#ifndef FRONTEND
				FUNC2(ERROR, "could not get current working directory: %m");
#else
				fprintf(stderr, _("could not get current working directory: %s\n"),
						strerror(errno));
				return NULL;
#endif
			}
		}

		new = FUNC10(FUNC14(buf) + FUNC14(path) + 2);
		if (!new)
		{
			FUNC7(buf);
#ifndef FRONTEND
			FUNC3(ERROR,
					(FUNC4(ERRCODE_OUT_OF_MEMORY),
					 FUNC5("out of memory")));
#else
			fprintf(stderr, _("out of memory\n"));
			return NULL;
#endif
		}
		FUNC11(new, "%s/%s", buf, path);
		FUNC7(buf);
	}
	else
	{
		new = FUNC12(path);
		if (!new)
		{
#ifndef FRONTEND
			FUNC3(ERROR,
					(FUNC4(ERRCODE_OUT_OF_MEMORY),
					 FUNC5("out of memory")));
#else
			fprintf(stderr, _("out of memory\n"));
			return NULL;
#endif
		}
	}

	/* Make sure punctuation is canonical, too */
	FUNC1(new);

	return new;
}