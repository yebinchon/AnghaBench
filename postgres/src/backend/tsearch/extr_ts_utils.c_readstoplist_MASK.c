#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsearch_readline_state ;
struct TYPE_3__ {int len; char** stop; } ;
typedef  TYPE_1__ StopList ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  pg_qsort_strcmp ; 
 int /*<<< orphan*/  FUNC7 (char**,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (void*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void
FUNC13(const char *fname, StopList *s, char *(*wordop) (const char *))
{
	char	  **stop = NULL;

	s->len = 0;
	if (fname && *fname)
	{
		char	   *filename = FUNC3(fname, "stop");
		tsearch_readline_state trst;
		char	   *line;
		int			reallen = 0;

		if (!FUNC11(&trst, filename))
			FUNC0(ERROR,
					(FUNC1(ERRCODE_CONFIG_FILE_ERROR),
					 FUNC2("could not open stop-word file \"%s\": %m",
							filename)));

		while ((line = FUNC10(&trst)) != NULL)
		{
			char	   *pbuf = line;

			/* Trim trailing space */
			while (*pbuf && !FUNC9(pbuf))
				pbuf += FUNC6(pbuf);
			*pbuf = '\0';

			/* Skip empty lines */
			if (*line == '\0')
			{
				FUNC5(line);
				continue;
			}

			if (s->len >= reallen)
			{
				if (reallen == 0)
				{
					reallen = 64;
					stop = (char **) FUNC4(sizeof(char *) * reallen);
				}
				else
				{
					reallen *= 2;
					stop = (char **) FUNC8((void *) stop,
											  sizeof(char *) * reallen);
				}
			}

			if (wordop)
			{
				stop[s->len] = wordop(line);
				if (stop[s->len] != line)
					FUNC5(line);
			}
			else
				stop[s->len] = line;

			(s->len)++;
		}

		FUNC12(&trst);
		FUNC5(filename);
	}

	s->stop = stop;

	/* Sort to allow binary searching */
	if (s->stop && s->len > 0)
		FUNC7(s->stop, s->len, sizeof(char *), pg_qsort_strcmp);
}