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
typedef  size_t Size ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (size_t) ; 
 char* FUNC5 (int*) ; 

Datum
FUNC6(bool typbyval)
{
	Size		length,
				i;
	int			tokenLength;
	const char *token;
	Datum		res;
	char	   *s;

	/*
	 * read the actual length of the value
	 */
	token = FUNC5(&tokenLength);
	length = FUNC2(token);

	token = FUNC5(&tokenLength);	/* read the '[' */
	if (token == NULL || token[0] != '[')
		FUNC3(ERROR, "expected \"[\" to start datum, but got \"%s\"; length = %zu",
			 token ? token : "[NULL]", length);

	if (typbyval)
	{
		if (length > (Size) sizeof(Datum))
			FUNC3(ERROR, "byval datum but length = %zu", length);
		res = (Datum) 0;
		s = (char *) (&res);
		for (i = 0; i < (Size) sizeof(Datum); i++)
		{
			token = FUNC5(&tokenLength);
			s[i] = (char) FUNC1(token);
		}
	}
	else if (length <= 0)
		res = (Datum) NULL;
	else
	{
		s = (char *) FUNC4(length);
		for (i = 0; i < length; i++)
		{
			token = FUNC5(&tokenLength);
			s[i] = (char) FUNC1(token);
		}
		res = FUNC0(s);
	}

	token = FUNC5(&tokenLength);	/* read the ']' */
	if (token == NULL || token[0] != ']')
		FUNC3(ERROR, "expected \"]\" to end datum, but got \"%s\"; length = %zu",
			 token ? token : "[NULL]", length);

	return res;
}