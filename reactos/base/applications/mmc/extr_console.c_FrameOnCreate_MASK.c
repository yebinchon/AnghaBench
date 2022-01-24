#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  idFirstChild; int /*<<< orphan*/  hWindowMenu; } ;
struct TYPE_6__ {scalar_t__ lpCreateParams; } ;
struct TYPE_5__ {int /*<<< orphan*/  hwndMDIClient; void* hMenuConsoleLarge; int /*<<< orphan*/  hwnd; void* hMenuConsoleSmall; void* AppAuthorMode; } ;
typedef  TYPE_1__* PCONSOLE_MAINFRAME_WND ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/ * LPCTSTR ;
typedef  TYPE_2__* LPCREATESTRUCT ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/  CONSOLE_MAINFRAME_WND ;
typedef  TYPE_3__ CLIENTCREATESTRUCT ;

/* Variables and functions */
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IDM_CONSOLE_LARGE ; 
 int /*<<< orphan*/  IDM_CONSOLE_SMALL ; 
 int /*<<< orphan*/  IDM_MDI_FIRSTCHILD ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 void* TRUE ; 
 int WS_BORDER ; 
 int WS_CHILD ; 
 int WS_CLIPCHILDREN ; 
 int /*<<< orphan*/  WS_EX_CLIENTEDGE ; 
 int WS_HSCROLL ; 
 int WS_VISIBLE ; 
 int WS_VSCROLL ; 
 int /*<<< orphan*/  hAppHeap ; 
 int /*<<< orphan*/  hAppInstance ; 
 int /*<<< orphan*/  hwndMDIClient ; 

__attribute__((used)) static LRESULT
FUNC10(HWND hwnd,
              LPARAM lParam)
{
    PCONSOLE_MAINFRAME_WND Info;
    CLIENTCREATESTRUCT ccs;
    LPCTSTR lpFileName = (LPCTSTR)(((LPCREATESTRUCT)lParam)->lpCreateParams);

    Info = FUNC2(hAppHeap,
                     HEAP_ZERO_MEMORY,
                     sizeof(CONSOLE_MAINFRAME_WND));
    if (Info == NULL)
        return -1;

    Info->hwnd = hwnd;

    FUNC6(hwnd,
                     0,
                     (LONG_PTR)Info);

    Info->hMenuConsoleSmall = FUNC3(hAppInstance,
                                       FUNC4(IDM_CONSOLE_SMALL));

    Info->hMenuConsoleLarge = FUNC3(hAppInstance,
                                       FUNC4(IDM_CONSOLE_LARGE));

    if (lpFileName == NULL)
    {
        /* FIXME */
        Info->AppAuthorMode = TRUE;
//        Info->lpConsoleTitle = TEXT("ReactOS Management Console");
    }
    else
    {
        Info->AppAuthorMode = TRUE;
//        Info->lpConsoleTitle = CreateNewConsoleTitle();
    }

    FUNC5(Info->hwnd,
            Info->hMenuConsoleSmall);

    FUNC7(Info->hwnd, FUNC9("ReactOS Management Console"));

    ccs.hWindowMenu = FUNC1(Info->hMenuConsoleLarge, 1);
    ccs.idFirstChild = IDM_MDI_FIRSTCHILD;

    /* Create the MDI client window */
    hwndMDIClient = FUNC0(WS_EX_CLIENTEDGE,
                                   L"MDICLIENT",
                                   (LPCTSTR)NULL,
                                   WS_CHILD | WS_CLIPCHILDREN | WS_VSCROLL | WS_HSCROLL | WS_VISIBLE | WS_BORDER,
                                   CW_USEDEFAULT,
                                   CW_USEDEFAULT,
                                   CW_USEDEFAULT,
                                   CW_USEDEFAULT,
                                   hwnd,
                                   (HMENU)0xCAC,
                                   hAppInstance,
                                   (LPVOID)&ccs);

    FUNC8(Info->hwndMDIClient, SW_SHOW);

    return 0;
}