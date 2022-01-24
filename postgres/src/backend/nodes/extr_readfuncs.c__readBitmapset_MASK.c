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
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int length ; 
 char* FUNC3 (int*) ; 
 scalar_t__ FUNC4 (char*,char**,int) ; 
 char* token ; 

__attribute__((used)) static Bitmapset *
FUNC5(void)
{
	Bitmapset  *result = NULL;

	FUNC0();

	token = FUNC3(&length);
	if (token == NULL)
		FUNC2(ERROR, "incomplete Bitmapset structure");
	if (length != 1 || token[0] != '(')
		FUNC2(ERROR, "unrecognized token: \"%.*s\"", length, token);

	token = FUNC3(&length);
	if (token == NULL)
		FUNC2(ERROR, "incomplete Bitmapset structure");
	if (length != 1 || token[0] != 'b')
		FUNC2(ERROR, "unrecognized token: \"%.*s\"", length, token);

	for (;;)
	{
		int			val;
		char	   *endptr;

		token = FUNC3(&length);
		if (token == NULL)
			FUNC2(ERROR, "unterminated Bitmapset structure");
		if (length == 1 && token[0] == ')')
			break;
		val = (int) FUNC4(token, &endptr, 10);
		if (endptr != token + length)
			FUNC2(ERROR, "unrecognized integer: \"%.*s\"", length, token);
		result = FUNC1(result, val);
	}

	return result;
}