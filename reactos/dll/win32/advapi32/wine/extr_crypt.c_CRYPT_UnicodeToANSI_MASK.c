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
typedef  int /*<<< orphan*/ * LPSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline BOOL FUNC3(LPCWSTR wstr, LPSTR* str, int strsize)
{
	if (!wstr)
	{
		*str = NULL;
		return TRUE;
	}

	if (!*str)
	{
		strsize = FUNC2(CP_ACP, 0, wstr, -1, NULL, 0, NULL, NULL);
		*str = FUNC0(strsize * sizeof(CHAR));
	}
	else if (strsize < 0)
	{
		strsize = INT_MAX; /* windows will pretend that the buffer is infinitely long */
	}

	if (*str)
	{
		FUNC2(CP_ACP, 0, wstr, -1, *str, strsize, NULL, NULL);
		return TRUE;
	}

	FUNC1(ERROR_NOT_ENOUGH_MEMORY);
	return FALSE;
}