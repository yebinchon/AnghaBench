
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int idFirstChild; int hWindowMenu; } ;
struct TYPE_6__ {scalar_t__ lpCreateParams; } ;
struct TYPE_5__ {int hwndMDIClient; void* hMenuConsoleLarge; int hwnd; void* hMenuConsoleSmall; void* AppAuthorMode; } ;
typedef TYPE_1__* PCONSOLE_MAINFRAME_WND ;
typedef int LRESULT ;
typedef int LPVOID ;
typedef int * LPCTSTR ;
typedef TYPE_2__* LPCREATESTRUCT ;
typedef scalar_t__ LPARAM ;
typedef int LONG_PTR ;
typedef int HWND ;
typedef int HMENU ;
typedef int CONSOLE_MAINFRAME_WND ;
typedef TYPE_3__ CLIENTCREATESTRUCT ;


 int CW_USEDEFAULT ;
 int CreateWindowEx (int ,char*,int *,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int GetSubMenu (void*,int) ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IDM_CONSOLE_LARGE ;
 int IDM_CONSOLE_SMALL ;
 int IDM_MDI_FIRSTCHILD ;
 void* LoadMenu (int ,int ) ;
 int MAKEINTRESOURCE (int ) ;
 int SW_SHOW ;
 int SetMenu (int ,void*) ;
 int SetWindowLongPtr (int ,int ,int ) ;
 int SetWindowText (int ,int ) ;
 int ShowWindow (int ,int ) ;
 int TEXT (char*) ;
 void* TRUE ;
 int WS_BORDER ;
 int WS_CHILD ;
 int WS_CLIPCHILDREN ;
 int WS_EX_CLIENTEDGE ;
 int WS_HSCROLL ;
 int WS_VISIBLE ;
 int WS_VSCROLL ;
 int hAppHeap ;
 int hAppInstance ;
 int hwndMDIClient ;

__attribute__((used)) static LRESULT
FrameOnCreate(HWND hwnd,
              LPARAM lParam)
{
    PCONSOLE_MAINFRAME_WND Info;
    CLIENTCREATESTRUCT ccs;
    LPCTSTR lpFileName = (LPCTSTR)(((LPCREATESTRUCT)lParam)->lpCreateParams);

    Info = HeapAlloc(hAppHeap,
                     HEAP_ZERO_MEMORY,
                     sizeof(CONSOLE_MAINFRAME_WND));
    if (Info == ((void*)0))
        return -1;

    Info->hwnd = hwnd;

    SetWindowLongPtr(hwnd,
                     0,
                     (LONG_PTR)Info);

    Info->hMenuConsoleSmall = LoadMenu(hAppInstance,
                                       MAKEINTRESOURCE(IDM_CONSOLE_SMALL));

    Info->hMenuConsoleLarge = LoadMenu(hAppInstance,
                                       MAKEINTRESOURCE(IDM_CONSOLE_LARGE));

    if (lpFileName == ((void*)0))
    {

        Info->AppAuthorMode = TRUE;

    }
    else
    {
        Info->AppAuthorMode = TRUE;

    }

    SetMenu(Info->hwnd,
            Info->hMenuConsoleSmall);

    SetWindowText(Info->hwnd, TEXT("ReactOS Management Console"));

    ccs.hWindowMenu = GetSubMenu(Info->hMenuConsoleLarge, 1);
    ccs.idFirstChild = IDM_MDI_FIRSTCHILD;


    hwndMDIClient = CreateWindowEx(WS_EX_CLIENTEDGE,
                                   L"MDICLIENT",
                                   (LPCTSTR)((void*)0),
                                   WS_CHILD | WS_CLIPCHILDREN | WS_VSCROLL | WS_HSCROLL | WS_VISIBLE | WS_BORDER,
                                   CW_USEDEFAULT,
                                   CW_USEDEFAULT,
                                   CW_USEDEFAULT,
                                   CW_USEDEFAULT,
                                   hwnd,
                                   (HMENU)0xCAC,
                                   hAppInstance,
                                   (LPVOID)&ccs);

    ShowWindow(Info->hwndMDIClient, SW_SHOW);

    return 0;
}
