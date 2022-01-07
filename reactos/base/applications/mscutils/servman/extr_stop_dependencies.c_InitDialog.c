
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_2__ {scalar_t__ ServiceList; scalar_t__ DisplayName; } ;
typedef TYPE_1__* PSTOP_DATA ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPARAM ;
typedef scalar_t__ HWND ;
typedef int * HICON ;
typedef int DWORD ;
typedef int BOOL ;


 int AddServiceNamesToStop (scalar_t__,scalar_t__) ;
 scalar_t__ AllocAndLoadString (scalar_t__*,int ,int ) ;
 int DestroyIcon (int *) ;
 int FALSE ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int GetSystemMetrics (int ) ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__) ;
 int ICON_SMALL ;
 int IDC_STOP_DEPENDS ;
 int IDC_STOP_DEPENDS_LB ;
 int IDI_SM_ICON ;
 int IDS_STOP_DEPENDS ;
 int IMAGE_ICON ;
 scalar_t__ LoadImageW (int ,int ,int ,int ,int ,int ) ;
 int LocalFree (scalar_t__) ;
 int MAKEINTRESOURCE (int ) ;
 int ProcessHeap ;
 int SM_CXSMICON ;
 int SendDlgItemMessageW (scalar_t__,int ,int ,int ,scalar_t__) ;
 int SendMessageW (scalar_t__,int ,int ,scalar_t__) ;
 int TRUE ;
 int WM_SETICON ;
 int WM_SETTEXT ;
 int _snwprintf (scalar_t__,int,scalar_t__,scalar_t__) ;
 int hInstance ;
 int wcslen (scalar_t__) ;

__attribute__((used)) static BOOL
InitDialog(HWND hDlg,
           UINT Message,
           WPARAM wParam,
           LPARAM lParam)
{
    PSTOP_DATA StopData;
    HWND hServiceListBox;
    LPWSTR lpPartialStr, lpStr;
    DWORD fullLen;
    HICON hIcon = ((void*)0);
    BOOL bRet = FALSE;

    StopData = (PSTOP_DATA)lParam;



    hIcon = (HICON)LoadImageW(hInstance,
                                MAKEINTRESOURCE(IDI_SM_ICON),
                                IMAGE_ICON,
                                GetSystemMetrics(SM_CXSMICON),
                                GetSystemMetrics(SM_CXSMICON),
                                0);
    if (hIcon)
    {

        SendMessageW(hDlg,
                        WM_SETICON,
                        ICON_SMALL,
                        (LPARAM)hIcon);
        DestroyIcon(hIcon);
    }


    if (AllocAndLoadString(&lpPartialStr,
                            hInstance,
                            IDS_STOP_DEPENDS))
    {

        fullLen = wcslen(lpPartialStr) + wcslen(StopData->DisplayName) + 1;

        lpStr = HeapAlloc(ProcessHeap,
                          0,
                          fullLen * sizeof(WCHAR));
        if (lpStr)
        {

            _snwprintf(lpStr,
                        fullLen,
                        lpPartialStr,
                        StopData->DisplayName);


            SendDlgItemMessageW(hDlg,
                                IDC_STOP_DEPENDS,
                                WM_SETTEXT,
                                0,
                                (LPARAM)lpStr);

            HeapFree(ProcessHeap,
                        0,
                        lpStr);

            bRet = TRUE;
        }

        LocalFree(lpPartialStr);
    }


    hServiceListBox = GetDlgItem(hDlg, IDC_STOP_DEPENDS_LB);
    if (hServiceListBox)
    {
        AddServiceNamesToStop(hServiceListBox,
                              (LPWSTR)StopData->ServiceList);
    }

    return bRet;
}
