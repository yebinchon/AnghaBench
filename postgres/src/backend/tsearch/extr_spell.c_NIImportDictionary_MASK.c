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
typedef  int /*<<< orphan*/  tsearch_readline_state ;
typedef  int /*<<< orphan*/  IspellDict ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void
FUNC13(IspellDict *Conf, const char *filename)
{
	tsearch_readline_state trst;
	char	   *line;

	if (!FUNC11(&trst, filename))
		FUNC1(ERROR,
				(FUNC2(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC3("could not open dictionary file \"%s\": %m",
						filename)));

	while ((line = FUNC10(&trst)) != NULL)
	{
		char	   *s,
				   *pstr;

		/* Set of affix flags */
		const char *flag;

		/* Extract flag from the line */
		flag = NULL;
		if ((s = FUNC4(line, '/')))
		{
			*s++ = '\0';
			flag = s;
			while (*s)
			{
				/* we allow only single encoded flags for faster works */
				if (FUNC7(s) == 1 && FUNC8(s) && !FUNC9(s))
					s++;
				else
				{
					*s = '\0';
					break;
				}
			}
		}
		else
			flag = "";

		/* Remove trailing spaces */
		s = line;
		while (*s)
		{
			if (FUNC9(s))
			{
				*s = '\0';
				break;
			}
			s += FUNC7(s);
		}
		pstr = FUNC5(Conf, line);

		FUNC0(Conf, pstr, flag);
		FUNC6(pstr);

		FUNC6(line);
	}
	FUNC12(&trst);
}