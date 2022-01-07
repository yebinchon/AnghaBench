
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cbSize; int cbWndExtra; void* hIconSm; int lpszClassName; void* hbrBackground; void* hCursor; void* hIcon; void* hInstance; int lpfnWndProc; } ;
typedef TYPE_1__ WNDCLASSEXW ;
typedef int LPCWSTR ;
typedef int * HMENU ;
typedef void* HINSTANCE ;
typedef void* HICON ;
typedef void* HBRUSH ;
typedef int HANDLE ;
typedef int BOOL ;
typedef int ATOM ;


 scalar_t__ COLOR_3DFACE ;
 int CW_USEDEFAULT ;
 int CheckMenuItem (int *,int ,int) ;
 int ChildWndProc ;
 scalar_t__ CreateStatusWindowW (int,char*,int ,int ) ;
 int CreateWindowExW (int ,int ,int ,int,int ,int ,int ,int ,int *,void*,void*,int *) ;
 int FALSE ;
 int FrameWndProc ;
 int * GetSubMenu (void*,int) ;
 int GetSystemMetrics (int ) ;
 int IDC_ARROW ;
 int IDI_REGEDIT ;
 int IDR_POPUP_MENUS ;
 int IDR_REGEDIT_MENU ;
 int ID_EDIT_MODIFY ;
 int ID_EDIT_PERMISSIONS ;
 int ID_VIEW_MENU ;
 int ID_VIEW_STATUSBAR ;
 int IMAGE_ICON ;
 int InitCommonControls () ;
 int InitializeAclUiDll () ;
 int LR_SHARED ;
 void* LoadCursorW (int *,int ) ;
 void* LoadIconW (void*,int ) ;
 scalar_t__ LoadImageW (void*,int ,int ,int ,int ,int ) ;
 void* LoadMenuW (void*,int ) ;
 int LoadSettings () ;
 int MAKEINTRESOURCEW (int ) ;
 int MF_BYCOMMAND ;
 int MF_BYPOSITION ;
 int MF_CHECKED ;
 int RegisterClassExW (TYPE_1__*) ;
 int RegisterClipboardFormatW (int ) ;
 int RegisterHexEditorClass (void*) ;
 int RemoveMenu (int *,int,int) ;
 int SBT_NOBORDERS ;
 int SM_CXSMICON ;
 int SM_CYSMICON ;
 int STATUS_WINDOW ;
 int SetMenuDefaultItem (int *,int ,int) ;
 int SetupStatusBar (int ,int ) ;
 int TRUE ;
 scalar_t__ UlongToPtr (int ) ;
 int UpdateWindow (int ) ;
 int WS_CHILD ;
 int WS_CLIPCHILDREN ;
 int WS_CLIPSIBLINGS ;
 int WS_EX_WINDOWEDGE ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 int ZeroMemory (TYPE_1__*,int) ;
 int hFrameWnd ;
 void* hMenuFrame ;
 void* hPopupMenus ;
 scalar_t__ hStatusBar ;
 int nClipboardFormat ;
 int strClipboardFormat ;
 int szChildClass ;
 int szFrameClass ;
 int szTitle ;

BOOL InitInstance(HINSTANCE hInstance, int nCmdShow)
{
    BOOL AclUiAvailable;
    HMENU hEditMenu;

    WNDCLASSEXW wcFrame;
    WNDCLASSEXW wcChild;
    ATOM hFrameWndClass;

    ZeroMemory(&wcFrame, sizeof(WNDCLASSEXW));
    wcFrame.cbSize = sizeof(WNDCLASSEXW);
    wcFrame.lpfnWndProc = FrameWndProc;
    wcFrame.hInstance = hInstance;
    wcFrame.hIcon = LoadIconW(hInstance, MAKEINTRESOURCEW(IDI_REGEDIT));
    wcFrame.hIconSm = (HICON)LoadImageW(hInstance, MAKEINTRESOURCEW(IDI_REGEDIT),
                                        IMAGE_ICON, GetSystemMetrics(SM_CXSMICON),
                                        GetSystemMetrics(SM_CYSMICON), LR_SHARED);
    wcFrame.hCursor = LoadCursorW(((void*)0), IDC_ARROW);
    wcFrame.hbrBackground = (HBRUSH)(COLOR_3DFACE + 1);
    wcFrame.lpszClassName = szFrameClass;

    hFrameWndClass = RegisterClassExW(&wcFrame);

    ZeroMemory(&wcChild, sizeof(WNDCLASSEXW));
    wcChild.cbSize = sizeof(WNDCLASSEXW);
    wcChild.lpfnWndProc = ChildWndProc;
    wcChild.cbWndExtra = sizeof(HANDLE);
    wcChild.hInstance = hInstance;
    wcChild.hIcon = LoadIconW(hInstance, MAKEINTRESOURCEW(IDI_REGEDIT));
    wcChild.hCursor = LoadCursorW(((void*)0), IDC_ARROW);
    wcChild.hbrBackground = (HBRUSH)(COLOR_3DFACE + 1);
    wcChild.lpszClassName = szChildClass;
    wcChild.hIconSm = (HICON)LoadImageW(hInstance, MAKEINTRESOURCEW(IDI_REGEDIT),
                                        IMAGE_ICON, GetSystemMetrics(SM_CXSMICON),
                                        GetSystemMetrics(SM_CYSMICON), LR_SHARED);

    RegisterClassExW(&wcChild);

    RegisterHexEditorClass(hInstance);

    hMenuFrame = LoadMenuW(hInstance, MAKEINTRESOURCEW(IDR_REGEDIT_MENU));
    hPopupMenus = LoadMenuW(hInstance, MAKEINTRESOURCEW(IDR_POPUP_MENUS));



    InitCommonControls();

    hEditMenu = GetSubMenu(hMenuFrame, 1);

    AclUiAvailable = InitializeAclUiDll();
    if(!AclUiAvailable)
    {

        if(hEditMenu != ((void*)0))
        {
            RemoveMenu(hEditMenu, ID_EDIT_PERMISSIONS, MF_BYCOMMAND);

            RemoveMenu(hEditMenu, 4, MF_BYPOSITION);
        }
    }

    if(hEditMenu != ((void*)0))
        SetMenuDefaultItem(hEditMenu, ID_EDIT_MODIFY, MF_BYCOMMAND);

    nClipboardFormat = RegisterClipboardFormatW(strClipboardFormat);




    hFrameWnd = CreateWindowExW(WS_EX_WINDOWEDGE, (LPCWSTR)(UlongToPtr(hFrameWndClass)), szTitle,
                                WS_OVERLAPPEDWINDOW | WS_CLIPSIBLINGS | WS_CLIPCHILDREN,
                                CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
                                ((void*)0), hMenuFrame, hInstance, ((void*)0) );

    if (!hFrameWnd)
    {
        return FALSE;
    }


    hStatusBar = CreateStatusWindowW(WS_VISIBLE | WS_CHILD | WS_CLIPSIBLINGS | WS_CLIPCHILDREN | SBT_NOBORDERS,
                                     L"", hFrameWnd, STATUS_WINDOW);
    if (hStatusBar)
    {

        SetupStatusBar(hFrameWnd, FALSE);
        CheckMenuItem(GetSubMenu(hMenuFrame, ID_VIEW_MENU), ID_VIEW_STATUSBAR, MF_BYCOMMAND | MF_CHECKED);
    }

    LoadSettings();
    UpdateWindow(hFrameWnd);
    return TRUE;
}
