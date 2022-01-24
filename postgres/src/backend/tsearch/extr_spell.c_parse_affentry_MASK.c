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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int PAE_INFIND ; 
 int PAE_INMASK ; 
 int PAE_INREPL ; 
 int PAE_WAIT_FIND ; 
 int PAE_WAIT_MASK ; 
 int PAE_WAIT_REPL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static bool
FUNC9(char *str, char *mask, char *find, char *repl)
{
	int			state = PAE_WAIT_MASK;
	char	   *pmask = mask,
			   *pfind = find,
			   *prepl = repl;

	*mask = *find = *repl = '\0';

	while (*str)
	{
		if (state == PAE_WAIT_MASK)
		{
			if (FUNC7(str, '#'))
				return false;
			else if (!FUNC8(str))
			{
				FUNC0(pmask, str);
				pmask += FUNC5(str);
				state = PAE_INMASK;
			}
		}
		else if (state == PAE_INMASK)
		{
			if (FUNC7(str, '>'))
			{
				*pmask = '\0';
				state = PAE_WAIT_FIND;
			}
			else if (!FUNC8(str))
			{
				FUNC0(pmask, str);
				pmask += FUNC5(str);
			}
		}
		else if (state == PAE_WAIT_FIND)
		{
			if (FUNC7(str, '-'))
			{
				state = PAE_INFIND;
			}
			else if (FUNC6(str) || FUNC7(str, '\'') /* english 's */ )
			{
				FUNC0(prepl, str);
				prepl += FUNC5(str);
				state = PAE_INREPL;
			}
			else if (!FUNC8(str))
				FUNC2(ERROR,
						(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
						 FUNC4("syntax error")));
		}
		else if (state == PAE_INFIND)
		{
			if (FUNC7(str, ','))
			{
				*pfind = '\0';
				state = PAE_WAIT_REPL;
			}
			else if (FUNC6(str))
			{
				FUNC0(pfind, str);
				pfind += FUNC5(str);
			}
			else if (!FUNC8(str))
				FUNC2(ERROR,
						(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
						 FUNC4("syntax error")));
		}
		else if (state == PAE_WAIT_REPL)
		{
			if (FUNC7(str, '-'))
			{
				break;			/* void repl */
			}
			else if (FUNC6(str))
			{
				FUNC0(prepl, str);
				prepl += FUNC5(str);
				state = PAE_INREPL;
			}
			else if (!FUNC8(str))
				FUNC2(ERROR,
						(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
						 FUNC4("syntax error")));
		}
		else if (state == PAE_INREPL)
		{
			if (FUNC7(str, '#'))
			{
				*prepl = '\0';
				break;
			}
			else if (FUNC6(str))
			{
				FUNC0(prepl, str);
				prepl += FUNC5(str);
			}
			else if (!FUNC8(str))
				FUNC2(ERROR,
						(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
						 FUNC4("syntax error")));
		}
		else
			FUNC1(ERROR, "unrecognized state in parse_affentry: %d", state);

		str += FUNC5(str);
	}

	*pmask = *pfind = *prepl = '\0';

	return (*mask && (*find || *repl));
}