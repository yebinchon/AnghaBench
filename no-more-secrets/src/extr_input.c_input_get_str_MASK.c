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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int FUNC2 (unsigned char**,char*) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC6(char** dest, char *prompt)
{
	int r, i, input_len;
	unsigned char *input;

	r = FUNC2(&input, prompt);
	if (r < 0)
	{
		FUNC0("Could not get input.");
		return -1;
	}

	if (r > 0)
	{
		if (input[r - 1] == '\n')
		{
			--r;
			if (r > 0 && input[r - 1] == '\r')
			{
				--r;
			}
		}
	}

	if (r == 0)
	{
		FUNC0("No input provided.");
		return -1;
	}

	input_len = r;

	*dest = FUNC4(input_len + 1);
	if (*dest == NULL)
	{
		FUNC0("Memory allocation error.");
		return -1;
	}

	FUNC5(*dest, 0, input_len + 1);

	for (i = 0; i < input_len; ++i)
	{
		if (FUNC3(input[i]))
		{
			(*dest)[i] = input[i];
		}
		else
		{
			FUNC0("Input contains non-ascii characters.");
			return -1;
		}
	}

	FUNC1(input);

	return input_len;
}