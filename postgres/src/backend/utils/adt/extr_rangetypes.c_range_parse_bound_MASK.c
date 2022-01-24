#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static const char *
FUNC6(const char *string, const char *ptr,
				  char **bound_str, bool *infinite)
{
	StringInfoData buf;

	/* Check for null: completely empty input means null */
	if (*ptr == ',' || *ptr == ')' || *ptr == ']')
	{
		*bound_str = NULL;
		*infinite = true;
	}
	else
	{
		/* Extract string for this bound */
		bool		inquote = false;

		FUNC5(&buf);
		while (inquote || !(*ptr == ',' || *ptr == ')' || *ptr == ']'))
		{
			char		ch = *ptr++;

			if (ch == '\0')
				FUNC1(ERROR,
						(FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
						 FUNC4("malformed range literal: \"%s\"",
								string),
						 FUNC3("Unexpected end of input.")));
			if (ch == '\\')
			{
				if (*ptr == '\0')
					FUNC1(ERROR,
							(FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
							 FUNC4("malformed range literal: \"%s\"",
									string),
							 FUNC3("Unexpected end of input.")));
				FUNC0(&buf, *ptr++);
			}
			else if (ch == '"')
			{
				if (!inquote)
					inquote = true;
				else if (*ptr == '"')
				{
					/* doubled quote within quote sequence */
					FUNC0(&buf, *ptr++);
				}
				else
					inquote = false;
			}
			else
				FUNC0(&buf, ch);
		}

		*bound_str = buf.data;
		*infinite = false;
	}

	return ptr;
}