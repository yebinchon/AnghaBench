#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  hInstance; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ Globals ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_STRING_LEN ; 
 int MB_ICONEXCLAMATION ; 
 int MB_ICONMASK ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int STRING_ERROR ; 
 int STRING_NOTEPAD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(HWND hParent, int formatId, LPCTSTR szString, DWORD dwFlags)
{
    TCHAR szMessage[MAX_STRING_LEN];
    TCHAR szResource[MAX_STRING_LEN];

    /* Load and format szMessage */
    FUNC1(Globals.hInstance, formatId, szResource, FUNC0(szResource));
    FUNC3(szMessage, FUNC0(szMessage), szResource, szString);

    /* Load szCaption */
    if ((dwFlags & MB_ICONMASK) == MB_ICONEXCLAMATION)
        FUNC1(Globals.hInstance, STRING_ERROR, szResource, FUNC0(szResource));
    else
        FUNC1(Globals.hInstance, STRING_NOTEPAD, szResource, FUNC0(szResource));

    /* Display Modal Dialog */
    // if (hParent == NULL)
        // hParent = Globals.hMainWnd;
    return FUNC2(hParent, szMessage, szResource, dwFlags);
}