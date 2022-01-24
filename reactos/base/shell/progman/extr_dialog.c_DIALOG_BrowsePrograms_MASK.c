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
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDS_ALL_FILES ; 
 int /*<<< orphan*/  IDS_PROGRAMS ; 
 int MAX_STRING_LEN ; 

__attribute__((used)) static
BOOL
FUNC2(HWND hWnd, LPWSTR lpszFile, INT nMaxFile)
{
    WCHAR szzFilter[2 * MAX_STRING_LEN + 100];
    LPWSTR p = szzFilter;

    FUNC0(&p, IDS_PROGRAMS , L"*.exe;*.pif;*.com;*.bat;*.cmd");
    FUNC0(&p, IDS_ALL_FILES, L"*.*");

    return FUNC1(hWnd, szzFilter, lpszFile, nMaxFile);
}