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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/ * FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 unsigned int FUNC3 (unsigned int,int) ; 

__attribute__((used)) static inline BOOL FUNC4(LPCSTR str, LPWSTR* wstr, int wstrsize)
{
	unsigned int wcount;

	if (!str)
	{
		*wstr = NULL;
		return TRUE;
	}
	wcount = FUNC1(CP_ACP, 0, str, -1, NULL, 0);
	if (wstrsize == -1)
		*wstr = FUNC0(wcount * sizeof(WCHAR));
	else
		wcount = FUNC3( wcount, wstrsize/sizeof(WCHAR) );
	if (*wstr)
	{
		FUNC1(CP_ACP, 0, str, -1, *wstr, wcount);
		return TRUE;
	}
	FUNC2(ERROR_NOT_ENOUGH_MEMORY);
	return FALSE;
}