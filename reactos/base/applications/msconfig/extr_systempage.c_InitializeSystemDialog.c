
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HWND ;
typedef int BOOL ;


 int GetWindowsDirectoryW (int *,int) ;
 int LoadSystemIni (int *,int ) ;
 int PATH_MAX ;

__attribute__((used)) static BOOL
InitializeSystemDialog(HWND hDlg)
{
    WCHAR winDir[PATH_MAX];

    GetWindowsDirectoryW(winDir, PATH_MAX);
    return LoadSystemIni(winDir, hDlg);
}
