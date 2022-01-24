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
typedef  scalar_t__ LPCSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  DATETIME_INFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOL
FUNC4 (DATETIME_INFO *infoPtr, LPCSTR lpszFormat)
{
    if (lpszFormat) {
	BOOL retval;
	INT len = FUNC3(CP_ACP, 0, lpszFormat, -1, NULL, 0);
	LPWSTR wstr = FUNC0(len * sizeof(WCHAR));
	if (wstr) FUNC3(CP_ACP, 0, lpszFormat, -1, wstr, len);
	retval = FUNC1 (infoPtr, wstr);
	FUNC2 (wstr);
	return retval;
    }
    else
	return FUNC1 (infoPtr, 0);

}