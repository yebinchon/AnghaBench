#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;

/* Variables and functions */
 char RANGE_EMPTY ; 
 int /*<<< orphan*/  RANGE_EMPTY_LITERAL ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 char RANGE_LB_INC ; 
 char RANGE_UB_INC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static char *
FUNC7(char flags, const char *lbound_str, const char *ubound_str)
{
	StringInfoData buf;

	if (flags & RANGE_EMPTY)
		return FUNC5(RANGE_EMPTY_LITERAL);

	FUNC4(&buf);

	FUNC2(&buf, (flags & RANGE_LB_INC) ? '[' : '(');

	if (FUNC0(flags))
		FUNC3(&buf, FUNC6(lbound_str));

	FUNC2(&buf, ',');

	if (FUNC1(flags))
		FUNC3(&buf, FUNC6(ubound_str));

	FUNC2(&buf, (flags & RANGE_UB_INC) ? ']' : ')');

	return buf.data;
}