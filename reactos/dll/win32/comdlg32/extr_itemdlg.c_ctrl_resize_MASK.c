#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int UINT ;
struct TYPE_6__ {int bottom; int top; } ;
struct TYPE_5__ {int cy; int /*<<< orphan*/  cx; } ;
typedef  TYPE_1__ SIZE ;
typedef  TYPE_2__ RECT ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOZORDER ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  WM_GETFONT ; 
 int /*<<< orphan*/  WM_GETTEXT ; 
 int /*<<< orphan*/  WM_GETTEXTLENGTH ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC14(HWND hctrl, UINT min_width, UINT max_width, BOOL multiline)
{
    LPWSTR text;
    UINT len, final_width;
    UINT lines, final_height;
    SIZE size;
    RECT rc;
    HDC hdc;
    WCHAR *c;
    HFONT font;

    FUNC10("\n");

    len = FUNC8(hctrl, WM_GETTEXTLENGTH, 0, 0);
    text = FUNC4(FUNC1(), 0, sizeof(WCHAR)*(len+1));
    if(!text) return;
    FUNC8(hctrl, WM_GETTEXT, len+1, (LPARAM)text);

    hdc = FUNC0(hctrl);
    font = (HFONT)FUNC8(hctrl, WM_GETFONT, 0, 0);
    font = FUNC7(hdc, font);
    FUNC2(hdc, text, FUNC11(text), &size);
    FUNC7(hdc, font);
    FUNC6(hctrl, hdc);

    if(len && multiline)
    {
        /* FIXME: line-wrap */
        for(lines = 1, c = text; *c != '\0'; c++)
            if(*c == '\n') lines++;

        final_height = size.cy*lines + 2*4;
    }
    else
    {
        FUNC3(hctrl, &rc);
        final_height = rc.bottom - rc.top;
    }

    final_width = FUNC13(FUNC12(size.cx, min_width) + 4, max_width);
    FUNC9(hctrl, NULL, 0, 0, final_width, final_height,
                 SWP_NOZORDER | SWP_NOMOVE | SWP_NOACTIVATE);

    FUNC5(FUNC1(), 0, text);
}