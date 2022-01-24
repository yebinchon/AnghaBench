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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/  LPCTSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

LPTSTR FUNC3(LPCTSTR str, va_list args)
{
    LPTSTR lpszString;
    size_t strLenPlusNull;

    if (!str) return NULL;

    strLenPlusNull = FUNC2(str, args) + 1;

    lpszString = (LPTSTR)FUNC0(0, strLenPlusNull * sizeof(TCHAR));
    if (!lpszString) return NULL;

    FUNC1(lpszString, strLenPlusNull, str, args);

    return lpszString;
}