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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PG_UTF8 ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 char* FUNC3 (char*,int) ; 
 int FUNC4 (char*) ; 

char *
FUNC5(FILE *fp)
{
	int			len;
	char	   *recoded;
	char		buf[4096];		/* lines must not be longer than this */

	if (FUNC0(buf, sizeof(buf), fp) == NULL)
		return NULL;

	len = FUNC4(buf);

	/* Make sure the input is valid UTF-8 */
	(void) FUNC2(PG_UTF8, buf, len, false);

	/* And convert */
	recoded = FUNC1(buf, len, PG_UTF8);
	if (recoded == buf)
	{
		/*
		 * conversion didn't pstrdup, so we must. We can use the length of the
		 * original string, because no conversion was done.
		 */
		recoded = FUNC3(recoded, len);
	}

	return recoded;
}