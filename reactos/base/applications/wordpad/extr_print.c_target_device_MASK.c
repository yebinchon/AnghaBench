#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_3__ {int right; int left; } ;
typedef  TYPE_1__ RECT ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HDC ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  EM_SETTARGETDEVICE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_EDITOR ; 
 scalar_t__ ID_WORDWRAP_MARGIN ; 
 scalar_t__ ID_WORDWRAP_NONE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 () ; 

void FUNC8(HWND hMainWnd, DWORD wordWrap)
{
    HWND hEditorWnd = FUNC3(hMainWnd, IDC_EDITOR);

    if(wordWrap == ID_WORDWRAP_MARGIN)
    {
        int width = 0;
        LRESULT result;
        HDC hdc = FUNC7();
        RECT rc = FUNC6(hdc);

        width = rc.right - rc.left;
        if(!hdc)
        {
            HDC hMaindc = FUNC2(hMainWnd);
            hdc = FUNC0(hMaindc);
            FUNC4(hMainWnd, hMaindc);
        }
        result = FUNC5(hEditorWnd, EM_SETTARGETDEVICE, (WPARAM)hdc, width);
        FUNC1(hdc);
        if (result)
            return;
        /* otherwise EM_SETTARGETDEVICE failed, so fall back on wrapping
         * to window using the NULL DC. */
    }

    if (wordWrap != ID_WORDWRAP_NONE) {
        FUNC5(hEditorWnd, EM_SETTARGETDEVICE, 0, 0);
    } else {
        FUNC5(hEditorWnd, EM_SETTARGETDEVICE, 0, 1);
    }

}