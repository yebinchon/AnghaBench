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
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 char RANGE_LB_INC ; 
 char RANGE_UB_INC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static char
FUNC4(const char *flags_str)
{
	char		flags = 0;

	if (flags_str[0] == '\0' ||
		flags_str[1] == '\0' ||
		flags_str[2] != '\0')
		FUNC0(ERROR,
				(FUNC1(ERRCODE_SYNTAX_ERROR),
				 FUNC3("invalid range bound flags"),
				 FUNC2("Valid values are \"[]\", \"[)\", \"(]\", and \"()\".")));

	switch (flags_str[0])
	{
		case '[':
			flags |= RANGE_LB_INC;
			break;
		case '(':
			break;
		default:
			FUNC0(ERROR,
					(FUNC1(ERRCODE_SYNTAX_ERROR),
					 FUNC3("invalid range bound flags"),
					 FUNC2("Valid values are \"[]\", \"[)\", \"(]\", and \"()\".")));
	}

	switch (flags_str[1])
	{
		case ']':
			flags |= RANGE_UB_INC;
			break;
		case ')':
			break;
		default:
			FUNC0(ERROR,
					(FUNC1(ERRCODE_SYNTAX_ERROR),
					 FUNC3("invalid range bound flags"),
					 FUNC2("Valid values are \"[]\", \"[)\", \"(]\", and \"()\".")));
	}

	return flags;
}