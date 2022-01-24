#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cbSize; int cbWndExtra; void* hIconSm; int /*<<< orphan*/  lpszClassName; void* hbrBackground; void* hCursor; void* hIcon; void* hInstance; int /*<<< orphan*/  lpfnWndProc; } ;
typedef  TYPE_1__ WNDCLASSEXW ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/ * HMENU ;
typedef  void* HINSTANCE ;
typedef  void* HICON ;
typedef  void* HBRUSH ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  ATOM ;

/* Variables and functions */
 scalar_t__ COLOR_3DFACE ; 
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ChildWndProc ; 
 scalar_t__ FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FrameWndProc ; 
 int /*<<< orphan*/ * FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_ARROW ; 
 int /*<<< orphan*/  IDI_REGEDIT ; 
 int /*<<< orphan*/  IDR_POPUP_MENUS ; 
 int /*<<< orphan*/  IDR_REGEDIT_MENU ; 
 int /*<<< orphan*/  ID_EDIT_MODIFY ; 
 int ID_EDIT_PERMISSIONS ; 
 int ID_VIEW_MENU ; 
 int /*<<< orphan*/  ID_VIEW_STATUSBAR ; 
 int /*<<< orphan*/  IMAGE_ICON ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  LR_SHARED ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC8 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int MF_BYCOMMAND ; 
 int MF_BYPOSITION ; 
 int MF_CHECKED ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int) ; 
 int SBT_NOBORDERS ; 
 int /*<<< orphan*/  SM_CXSMICON ; 
 int /*<<< orphan*/  SM_CYSMICON ; 
 int /*<<< orphan*/  STATUS_WINDOW ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int WS_CHILD ; 
 int WS_CLIPCHILDREN ; 
 int WS_CLIPSIBLINGS ; 
 int /*<<< orphan*/  WS_EX_WINDOWEDGE ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  hFrameWnd ; 
 void* hMenuFrame ; 
 void* hPopupMenus ; 
 scalar_t__ hStatusBar ; 
 int /*<<< orphan*/  nClipboardFormat ; 
 int /*<<< orphan*/  strClipboardFormat ; 
 int /*<<< orphan*/  szChildClass ; 
 int /*<<< orphan*/  szFrameClass ; 
 int /*<<< orphan*/  szTitle ; 

BOOL FUNC22(HINSTANCE hInstance, int nCmdShow)
{
    BOOL AclUiAvailable;
    HMENU hEditMenu;

    WNDCLASSEXW wcFrame;
    WNDCLASSEXW wcChild;
    ATOM hFrameWndClass;

    FUNC21(&wcFrame, sizeof(WNDCLASSEXW));
    wcFrame.cbSize = sizeof(WNDCLASSEXW);
    wcFrame.lpfnWndProc = FrameWndProc;
    wcFrame.hInstance = hInstance;
    wcFrame.hIcon = FUNC8(hInstance, FUNC12(IDI_REGEDIT));
    wcFrame.hIconSm = (HICON)FUNC9(hInstance, FUNC12(IDI_REGEDIT),
                                        IMAGE_ICON, FUNC4(SM_CXSMICON),
                                        FUNC4(SM_CYSMICON), LR_SHARED);
    wcFrame.hCursor = FUNC7(NULL, IDC_ARROW);
    wcFrame.hbrBackground = (HBRUSH)(COLOR_3DFACE + 1);
    wcFrame.lpszClassName = szFrameClass;

    hFrameWndClass = FUNC13(&wcFrame); /* register frame window class */

    FUNC21(&wcChild, sizeof(WNDCLASSEXW));
    wcChild.cbSize = sizeof(WNDCLASSEXW);
    wcChild.lpfnWndProc = ChildWndProc;
    wcChild.cbWndExtra = sizeof(HANDLE);
    wcChild.hInstance = hInstance;
    wcChild.hIcon = FUNC8(hInstance, FUNC12(IDI_REGEDIT));
    wcChild.hCursor = FUNC7(NULL, IDC_ARROW);
    wcChild.hbrBackground = (HBRUSH)(COLOR_3DFACE + 1);
    wcChild.lpszClassName = szChildClass;
    wcChild.hIconSm = (HICON)FUNC9(hInstance, FUNC12(IDI_REGEDIT),
                                        IMAGE_ICON, FUNC4(SM_CXSMICON),
                                        FUNC4(SM_CYSMICON), LR_SHARED);

    FUNC13(&wcChild); /* register child windows class */

    FUNC15(hInstance);

    hMenuFrame = FUNC10(hInstance, FUNC12(IDR_REGEDIT_MENU));
    hPopupMenus = FUNC10(hInstance, FUNC12(IDR_POPUP_MENUS));

    /* Initialize the Windows Common Controls DLL */
    // TODO: Replace this call by InitCommonControlsEx(_something_)
    FUNC5();

    hEditMenu = FUNC3(hMenuFrame, 1);

    AclUiAvailable = FUNC6();
    if(!AclUiAvailable)
    {
        /* hide the Edit/Permissions... menu entry */
        if(hEditMenu != NULL)
        {
            FUNC16(hEditMenu, ID_EDIT_PERMISSIONS, MF_BYCOMMAND);
            /* remove the separator after the menu item */
            FUNC16(hEditMenu, 4, MF_BYPOSITION);
        }
    }

    if(hEditMenu != NULL)
        FUNC17(hEditMenu, ID_EDIT_MODIFY, MF_BYCOMMAND);

    nClipboardFormat = FUNC14(strClipboardFormat);
    /* if (nClipboardFormat == 0) {
        DWORD dwError = GetLastError();
    } */

    hFrameWnd = FUNC2(WS_EX_WINDOWEDGE, (LPCWSTR)(FUNC19(hFrameWndClass)), szTitle,
                                WS_OVERLAPPEDWINDOW | WS_CLIPSIBLINGS | WS_CLIPCHILDREN,
                                CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
                                NULL, hMenuFrame, hInstance, NULL/*lpParam*/);

    if (!hFrameWnd)
    {
        return FALSE;
    }

    /* Create the status bar */
    hStatusBar = FUNC1(WS_VISIBLE | WS_CHILD | WS_CLIPSIBLINGS | WS_CLIPCHILDREN | SBT_NOBORDERS,
                                     L"", hFrameWnd, STATUS_WINDOW);
    if (hStatusBar)
    {
        /* Create the status bar panes */
        FUNC18(hFrameWnd, FALSE);
        FUNC0(FUNC3(hMenuFrame, ID_VIEW_MENU), ID_VIEW_STATUSBAR, MF_BYCOMMAND | MF_CHECKED);
    }

    FUNC11();
    FUNC20(hFrameWnd);
    return TRUE;
}