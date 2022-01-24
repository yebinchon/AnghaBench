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
typedef  scalar_t__ uint64 ;
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  int32 ;

/* Variables and functions */
 double MAX_RATE_LOWER ; 
 double MAX_RATE_UPPER ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 double FUNC3 (char*,char**) ; 

__attribute__((used)) static int32
FUNC4(char *src)
{
	double		result;
	char	   *after_num;
	char	   *suffix = NULL;

	errno = 0;
	result = FUNC3(src, &after_num);
	if (src == after_num)
	{
		FUNC2("transfer rate \"%s\" is not a valid value", src);
		FUNC0(1);
	}
	if (errno != 0)
	{
		FUNC2("invalid transfer rate \"%s\": %m", src);
		FUNC0(1);
	}

	if (result <= 0)
	{
		/*
		 * Reject obviously wrong values here.
		 */
		FUNC2("transfer rate must be greater than zero");
		FUNC0(1);
	}

	/*
	 * Evaluate suffix, after skipping over possible whitespace. Lack of
	 * suffix means kilobytes.
	 */
	while (*after_num != '\0' && FUNC1((unsigned char) *after_num))
		after_num++;

	if (*after_num != '\0')
	{
		suffix = after_num;
		if (*after_num == 'k')
		{
			/* kilobyte is the expected unit. */
			after_num++;
		}
		else if (*after_num == 'M')
		{
			after_num++;
			result *= 1024.0;
		}
	}

	/* The rest can only consist of white space. */
	while (*after_num != '\0' && FUNC1((unsigned char) *after_num))
		after_num++;

	if (*after_num != '\0')
	{
		FUNC2("invalid --max-rate unit: \"%s\"", suffix);
		FUNC0(1);
	}

	/* Valid integer? */
	if ((uint64) result != (uint64) ((uint32) result))
	{
		FUNC2("transfer rate \"%s\" exceeds integer range", src);
		FUNC0(1);
	}

	/*
	 * The range is checked on the server side too, but avoid the server
	 * connection if a nonsensical value was passed.
	 */
	if (result < MAX_RATE_LOWER || result > MAX_RATE_UPPER)
	{
		FUNC2("transfer rate \"%s\" is out of range", src);
		FUNC0(1);
	}

	return (int32) result;
}