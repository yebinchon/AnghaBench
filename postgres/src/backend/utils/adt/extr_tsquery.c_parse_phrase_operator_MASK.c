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
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_3__ {char* buf; } ;
typedef  TYPE_1__* TSQueryParserState ;

/* Variables and functions */
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 long MAXENTRYPOS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,long) ; 
 int /*<<< orphan*/  errno ; 
 long FUNC3 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char) ; 

__attribute__((used)) static bool
FUNC6(TSQueryParserState pstate, int16 *distance)
{
	enum
	{
		PHRASE_OPEN = 0,
		PHRASE_DIST,
		PHRASE_CLOSE,
		PHRASE_FINISH
	}			state = PHRASE_OPEN;
	char	   *ptr = pstate->buf;
	char	   *endptr;
	long		l = 1;			/* default distance */

	while (*ptr)
	{
		switch (state)
		{
			case PHRASE_OPEN:
				if (FUNC5(ptr, '<'))
				{
					state = PHRASE_DIST;
					ptr++;
				}
				else
					return false;
				break;

			case PHRASE_DIST:
				if (FUNC5(ptr, '-'))
				{
					state = PHRASE_CLOSE;
					ptr++;
					continue;
				}

				if (!FUNC4(ptr))
					return false;

				errno = 0;
				l = FUNC3(ptr, &endptr, 10);
				if (ptr == endptr)
					return false;
				else if (errno == ERANGE || l < 0 || l > MAXENTRYPOS)
					FUNC0(ERROR,
							(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC2("distance in phrase operator should not be greater than %d",
									MAXENTRYPOS)));
				else
				{
					state = PHRASE_CLOSE;
					ptr = endptr;
				}
				break;

			case PHRASE_CLOSE:
				if (FUNC5(ptr, '>'))
				{
					state = PHRASE_FINISH;
					ptr++;
				}
				else
					return false;
				break;

			case PHRASE_FINISH:
				*distance = (int16) l;
				pstate->buf = ptr;
				return true;
		}
	}

	return false;
}