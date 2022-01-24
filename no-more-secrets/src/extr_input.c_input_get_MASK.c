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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FIONREAD ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC11(unsigned char** dest, char *prompt)
{
	int r, input_len;
	fd_set input_stream;
	struct timeval timeout;
	void *timeout_p;

	FUNC2(&input_stream);
	input_len = 0;

	timeout.tv_sec  = 10;
	timeout.tv_usec = 0;

	if (FUNC6(STDIN_FILENO))
	{
		timeout_p = NULL;
		if (prompt != NULL)
		{
			FUNC8("%s", prompt);
			FUNC4(stdout);
		}
	}
	else
	{
		timeout_p = &timeout;
	}

	FUNC1(STDIN_FILENO, &input_stream);
	r = FUNC10(FD_SETSIZE, &input_stream, NULL, NULL, timeout_p);
	if (r < 0)
	{
		FUNC3("Error while waiting for input data. Errno: %i", errno);
		return -1;
	}
	if (r > 0)
	{
		r = FUNC5(STDIN_FILENO, FIONREAD, &input_len);
		if (r < 0)
		{
			FUNC3("Could not determine length of input. Errno: %i", errno);
			return -1;
		}
		if (input_len > 0)
		{
			*dest = FUNC7(input_len);
			if (*dest == NULL)
			{
				FUNC3("Memory allocation error.");
				return -1;
			}
			r = FUNC9(STDIN_FILENO, *dest, input_len);
			if (r < 0)
			{
				FUNC3("Input read error. Errno: %i", errno);
				return -1;
			}
		}
	}

	FUNC0(STDIN_FILENO, &input_stream);

	return input_len;
}