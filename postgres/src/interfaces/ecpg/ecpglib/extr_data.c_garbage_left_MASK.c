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
typedef  enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;
typedef  enum ARRAY_TYPE { ____Placeholder_ARRAY_TYPE } ARRAY_TYPE ;

/* Variables and functions */
 int ECPG_ARRAY_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char) ; 
 int /*<<< orphan*/  FUNC3 (int,char) ; 
 scalar_t__ FUNC4 (unsigned char) ; 

__attribute__((used)) static bool
FUNC5(enum ARRAY_TYPE isarray, char **scan_length, enum COMPAT_MODE compat)
{
	/*
	 * INFORMIX allows for selecting a numeric into an int, the result is
	 * truncated
	 */
	if (isarray == ECPG_ARRAY_NONE)
	{
		if (FUNC1(compat) && **scan_length == '.')
		{
			/* skip invalid characters */
			do
			{
				(*scan_length)++;
			} while (FUNC4((unsigned char) **scan_length));
		}

		if (**scan_length != ' ' && **scan_length != '\0')
			return true;
	}
	else if (FUNC0(isarray) && !FUNC3(isarray, **scan_length) && !FUNC2(isarray, **scan_length))
		return true;

	return false;
}