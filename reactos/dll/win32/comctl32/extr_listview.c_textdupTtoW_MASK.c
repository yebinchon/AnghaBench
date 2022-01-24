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
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ LPSTR_TEXTCALLBACKW ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static inline LPWSTR FUNC5(LPCWSTR text, BOOL isW)
{
    LPWSTR wstr = (LPWSTR)text;

    if (!isW && FUNC4(text))
    {
	INT len = FUNC1(CP_ACP, 0, (LPCSTR)text, -1, NULL, 0);
	wstr = FUNC0(len * sizeof(WCHAR));
	if (wstr) FUNC1(CP_ACP, 0, (LPCSTR)text, -1, wstr, len);
    }
    FUNC2("   wstr=%s\n", text == LPSTR_TEXTCALLBACKW ?  "(callback)" : FUNC3(wstr));
    return wstr;
}