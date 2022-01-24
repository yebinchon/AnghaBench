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
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 

__attribute__((used)) static char *
FUNC5(char **input, char attr)
{
	char	   *begin = *input;
	char	   *end;

	if (*begin != attr)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC3("malformed SCRAM message"),
				 FUNC2("Expected attribute \"%c\" but found \"%s\".",
						   attr, FUNC4(*begin))));
	begin++;

	if (*begin != '=')
		FUNC0(ERROR,
				(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC3("malformed SCRAM message"),
				 FUNC2("Expected character \"=\" for attribute \"%c\".", attr)));
	begin++;

	end = begin;
	while (*end && *end != ',')
		end++;

	if (*end)
	{
		*end = '\0';
		*input = end + 1;
	}
	else
		*input = end;

	return begin;
}