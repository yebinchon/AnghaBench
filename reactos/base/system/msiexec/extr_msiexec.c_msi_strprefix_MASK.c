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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int CSTR_EQUAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NORM_IGNORECASE ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC7(LPCWSTR str1, LPCSTR str2)
{
	DWORD len, ret;
	LPWSTR strW;

	len = FUNC5( CP_ACP, 0, str2, -1, NULL, 0);
	if( !len )
		return FALSE;
	if( FUNC6(str1) < (len-1) )
		return FALSE;
	strW = FUNC3(FUNC1(), 0, sizeof(WCHAR)*len);
	FUNC5( CP_ACP, 0, str2, -1, strW, len);
	ret = FUNC0(FUNC2(), NORM_IGNORECASE, str1, len-1, strW, len-1);
	FUNC4(FUNC1(), 0, strW);
	return (ret == CSTR_EQUAL);
}