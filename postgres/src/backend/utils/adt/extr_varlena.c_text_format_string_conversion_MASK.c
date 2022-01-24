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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static void
FUNC8(StringInfo buf, char conversion,
							  FmgrInfo *typOutputInfo,
							  Datum value, bool isNull,
							  int flags, int width)
{
	char	   *str;

	/* Handle NULL arguments before trying to stringify the value. */
	if (isNull)
	{
		if (conversion == 's')
			FUNC7(buf, "", flags, width);
		else if (conversion == 'L')
			FUNC7(buf, "NULL", flags, width);
		else if (conversion == 'I')
			FUNC1(ERROR,
					(FUNC2(ERRCODE_NULL_VALUE_NOT_ALLOWED),
					 FUNC3("null values cannot be formatted as an SQL identifier")));
		return;
	}

	/* Stringify. */
	str = FUNC0(typOutputInfo, value);

	/* Escape. */
	if (conversion == 'I')
	{
		/* quote_identifier may or may not allocate a new string. */
		FUNC7(buf, FUNC5(str), flags, width);
	}
	else if (conversion == 'L')
	{
		char	   *qstr = FUNC6(str);

		FUNC7(buf, qstr, flags, width);
		/* quote_literal_cstr() always allocates a new string */
		FUNC4(qstr);
	}
	else
		FUNC7(buf, str, flags, width);

	/* Cleanup. */
	FUNC4(str);
}