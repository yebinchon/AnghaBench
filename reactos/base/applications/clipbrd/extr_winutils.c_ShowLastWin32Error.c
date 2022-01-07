
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPWSTR ;
typedef int HWND ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessageW (int,int *,scalar_t__,int ,int *,int ,int *) ;
 scalar_t__ GetLastError () ;
 int LANG_USER_DEFAULT ;
 int LocalFree (int *) ;
 int MB_ICONERROR ;
 int MB_OK ;
 int MessageBoxW (int ,int *,int *,int) ;

void ShowLastWin32Error(HWND hwndParent)
{
    DWORD dwError;
    LPWSTR lpMsgBuf = ((void*)0);

    dwError = GetLastError();
    if (dwError == ERROR_SUCCESS)
        return;

    if (!FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                        FORMAT_MESSAGE_FROM_SYSTEM |
                        FORMAT_MESSAGE_IGNORE_INSERTS,
                        ((void*)0),
                        dwError,
                        LANG_USER_DEFAULT,
                        (LPWSTR)&lpMsgBuf,
                        0, ((void*)0)))
    {
        return;
    }

    MessageBoxW(hwndParent, lpMsgBuf, ((void*)0), MB_OK | MB_ICONERROR);
    LocalFree(lpMsgBuf);
}
