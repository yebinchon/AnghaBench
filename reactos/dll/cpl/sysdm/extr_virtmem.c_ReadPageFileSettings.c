
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hSelf; int * szPagingFiles; } ;
typedef TYPE_1__* PVIRTMEM ;
typedef int * PBYTE ;
typedef int * LPTSTR ;
typedef int * HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetProcessHeap () ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__ HeapAlloc (int ,int ,int ) ;
 int KEY_QUERY_VALUE ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyEx (int ,int ,int ,int *,int ,int ,int *,int **,int *) ;
 scalar_t__ RegQueryValueEx (int *,int ,int *,int *,int *,int *) ;
 int ShowLastWin32Error (int ) ;
 int TRUE ;
 int ZeroMemory (int *,int ) ;
 int _T (char*) ;
 int lpKey ;

__attribute__((used)) static BOOL
ReadPageFileSettings(PVIRTMEM pVirtMem)
{
    HKEY hkey = ((void*)0);
    DWORD dwType;
    DWORD dwDataSize;
    BOOL bRet = FALSE;

    if (RegCreateKeyEx(HKEY_LOCAL_MACHINE,
                       lpKey,
                       0,
                       ((void*)0),
                       REG_OPTION_NON_VOLATILE,
                       KEY_QUERY_VALUE,
                       ((void*)0),
                       &hkey,
                       ((void*)0)) == ERROR_SUCCESS)
    {
        if (RegQueryValueEx(hkey,
                            _T("PagingFiles"),
                            ((void*)0),
                            &dwType,
                            ((void*)0),
                            &dwDataSize) == ERROR_SUCCESS)
        {
            pVirtMem->szPagingFiles = (LPTSTR)HeapAlloc(GetProcessHeap(),
                                                        0,
                                                        dwDataSize);
            if (pVirtMem->szPagingFiles != ((void*)0))
            {
                ZeroMemory(pVirtMem->szPagingFiles,
                           dwDataSize);
                if (RegQueryValueEx(hkey,
                                    _T("PagingFiles"),
                                    ((void*)0),
                                    &dwType,
                                    (PBYTE)pVirtMem->szPagingFiles,
                                    &dwDataSize) == ERROR_SUCCESS)
                {
                    bRet = TRUE;
                }
            }
        }
    }

    if (!bRet)
        ShowLastWin32Error(pVirtMem->hSelf);

    if (hkey != ((void*)0))
        RegCloseKey(hkey);

    return bRet;
}
