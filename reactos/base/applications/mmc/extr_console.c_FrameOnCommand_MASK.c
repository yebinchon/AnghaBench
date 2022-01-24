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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  hMenuConsoleLarge; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__* PCONSOLE_MAINFRAME_WND ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  IDM_FILE_EXIT 131 
#define  IDM_FILE_NEW 130 
#define  IDM_FILE_SAVE 129 
#define  IDM_FILE_SAVEAS 128 
 int IDM_MDI_FIRSTCHILD ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_CLOSE ; 
 int /*<<< orphan*/  WM_COMMAND ; 
 int /*<<< orphan*/  WM_MDIGETACTIVE ; 
 int /*<<< orphan*/  hwndMDIClient ; 

__attribute__((used)) static VOID
FUNC9(HWND hwnd,
               UINT uMsg,
               WPARAM wParam,
               LPARAM lParam)
{
    PCONSOLE_MAINFRAME_WND Info;
    HWND hChild;

    Info = (PCONSOLE_MAINFRAME_WND)FUNC4(hwnd, 0);

    switch (FUNC5(wParam))
    {
        case IDM_FILE_NEW:
            FUNC0(Info, hwndMDIClient);
            FUNC8(Info->hwnd,
                    Info->hMenuConsoleLarge);
            break;

        case IDM_FILE_SAVE:
            FUNC2(hwnd);
            break;

        case IDM_FILE_SAVEAS:
            FUNC3(hwnd);
            break;

        case IDM_FILE_EXIT:
            FUNC6(hwnd, WM_CLOSE, 0, 0);
            break;

        default:
            if (FUNC5(wParam) >= IDM_MDI_FIRSTCHILD)
            {
                FUNC1(hwnd, hwndMDIClient, uMsg, wParam, lParam);
            }
            else
            {
                hChild = (HWND)FUNC7(hwndMDIClient, WM_MDIGETACTIVE, 0, 0);
                if (hChild)
                {
                    FUNC7(hChild, WM_COMMAND, wParam, lParam);
                }
            }
            break;
    }
}