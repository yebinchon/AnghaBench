
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int GetWindowsDirectoryW (int*,int) ;
 int LoadBootIni (int*,int ) ;
 int PATH_MAX ;
 int* wcschr (int*,int) ;

__attribute__((used)) static BOOL
InitializeFreeLDRDialog(HWND hDlg)
{
    WCHAR winDir[PATH_MAX];
    WCHAR* ptr = ((void*)0);

    GetWindowsDirectoryW(winDir, PATH_MAX);
    ptr = wcschr(winDir, L'\\');
    if (ptr == ((void*)0))
    {
        return FALSE;
    }
    ptr[1] = L'\0';
    return LoadBootIni(winDir, hDlg);
}
