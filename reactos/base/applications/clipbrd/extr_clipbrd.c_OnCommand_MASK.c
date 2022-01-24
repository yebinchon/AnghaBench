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
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_2__ {int /*<<< orphan*/  hMainWnd; int /*<<< orphan*/  hInstance; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HICON ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLIPBRD_ICON ; 
#define  CMD_ABOUT 134 
#define  CMD_AUTOMATIC 133 
#define  CMD_DELETE 132 
#define  CMD_EXIT 131 
#define  CMD_HELP 130 
#define  CMD_OPEN 129 
#define  CMD_SAVE_AS 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ Globals ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDYES ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int MAX_STRING_LEN ; 
 int MB_ICONWARNING ; 
 int MB_YESNO ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRING_CLIPBOARD ; 
 int /*<<< orphan*/  STRING_DELETE_MSG ; 
 int /*<<< orphan*/  STRING_DELETE_TITLE ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_CLOSE ; 

__attribute__((used)) static int FUNC14(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    switch (FUNC4(wParam))
    {
        case CMD_OPEN:
        {
            FUNC5();
            break;
        }

        case CMD_SAVE_AS:
        {
            FUNC11();
            break;
        }

        case CMD_EXIT:
        {
            FUNC10(Globals.hMainWnd, WM_CLOSE, 0, 0);
            break;
        }

        case CMD_DELETE:
        {
            if (FUNC9(Globals.hMainWnd, Globals.hInstance,
                              STRING_DELETE_MSG, STRING_DELETE_TITLE,
                              MB_ICONWARNING | MB_YESNO) != IDYES)
            {
                break;
            }

            FUNC1();
            break;
        }

        case CMD_AUTOMATIC:
        {
            FUNC12(0);
            break;
        }

        case CMD_HELP:
        {
            FUNC3(Globals.hMainWnd, L"clipbrd.chm", 0, 0);
            break;
        }

        case CMD_ABOUT:
        {
            HICON hIcon;
            WCHAR szTitle[MAX_STRING_LEN];

            hIcon = FUNC6(Globals.hInstance, FUNC8(CLIPBRD_ICON));
            FUNC7(Globals.hInstance, STRING_CLIPBOARD, szTitle, FUNC0(szTitle));
            FUNC13(Globals.hMainWnd, szTitle, NULL, hIcon);
            FUNC2(hIcon);
            break;
        }

        default:
        {
            break;
        }
    }
    return 0;
}