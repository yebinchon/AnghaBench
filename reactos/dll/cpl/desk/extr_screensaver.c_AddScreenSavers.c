
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int ScreenSaverCount; TYPE_1__* ScreenSaverItems; } ;
struct TYPE_5__ {scalar_t__ szDisplayName; int bIsScreenSaver; } ;
typedef int TCHAR ;
typedef TYPE_1__ ScreenSaverItem ;
typedef TYPE_2__* PDATA ;
typedef char* LPTSTR ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;


 int CB_ADDSTRING ;
 int CB_SETITEMDATA ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetModuleFileName (int ,int *,int) ;
 int GetSystemDirectory (int *,int) ;
 int GetWindowsDirectory (int *,int) ;
 int IDC_SCREENS_LIST ;
 int IDS_NONE ;
 int LoadString (int ,int ,scalar_t__,int) ;
 int MAX_PATH ;
 int SearchScreenSavers (int ,int *,TYPE_2__*) ;
 int SendMessage (int ,int ,int ,int ) ;
 int _T (char) ;
 scalar_t__ _tcsicmp (int *,int *) ;
 char* _tcsrchr (int *,int ) ;
 int hApplet ;

__attribute__((used)) static VOID
AddScreenSavers(HWND hwndDlg, PDATA pData)
{
    HWND hwndScreenSavers = GetDlgItem(hwndDlg, IDC_SCREENS_LIST);
    TCHAR szSearchPath[MAX_PATH];
    TCHAR szLocalPath[MAX_PATH];
    INT i;
    ScreenSaverItem *ScreenSaverItem = ((void*)0);
    LPTSTR lpBackSlash;


    ScreenSaverItem = pData->ScreenSaverItems;

    ScreenSaverItem->bIsScreenSaver = FALSE;

    LoadString(hApplet,
               IDS_NONE,
               ScreenSaverItem->szDisplayName,
               sizeof(ScreenSaverItem->szDisplayName) / sizeof(TCHAR));

    i = SendMessage(hwndScreenSavers,
                    CB_ADDSTRING,
                    0,
                    (LPARAM)ScreenSaverItem->szDisplayName);

    SendMessage(hwndScreenSavers,
                CB_SETITEMDATA,
                i,
                (LPARAM)0);


    pData->ScreenSaverCount = 1;


    GetModuleFileName(hApplet, szLocalPath, MAX_PATH);
    lpBackSlash = _tcsrchr(szLocalPath, _T('\\'));
    if (lpBackSlash != ((void*)0))
    {
        *lpBackSlash = '\0';
        SearchScreenSavers(hwndScreenSavers, szLocalPath, pData);
    }


    GetSystemDirectory(szSearchPath, MAX_PATH);
    if (lpBackSlash != ((void*)0) && _tcsicmp(szSearchPath, szLocalPath) != 0)
        SearchScreenSavers(hwndScreenSavers, szSearchPath, pData);


    GetWindowsDirectory(szSearchPath, MAX_PATH);
    if (lpBackSlash != ((void*)0) && _tcsicmp(szSearchPath, szLocalPath) != 0)
        SearchScreenSavers(hwndScreenSavers, szSearchPath, pData);
}
