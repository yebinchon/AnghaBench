
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STRRET ;
typedef int LPWSTR ;
typedef int LPSHELLFOLDER ;
typedef int LPCITEMIDLIST ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IShellFolder_GetDisplayNameOf (int ,int ,int ,int *) ;
 int IShellFolder_Release (int ) ;
 int MAX_PATH ;
 int SHGDN_FORPARSING ;
 int SHGetDesktopFolder (int *) ;
 int SUCCEEDED (int ) ;
 int StrRetToBufW (int *,int ,int ,int ) ;

__attribute__((used)) static BOOL COMDLG32_GetDisplayNameOf(LPCITEMIDLIST pidl, LPWSTR pwszPath) {
    LPSHELLFOLDER psfDesktop;
    STRRET strret;

    if (FAILED(SHGetDesktopFolder(&psfDesktop)))
        return FALSE;

    if (FAILED(IShellFolder_GetDisplayNameOf(psfDesktop, pidl, SHGDN_FORPARSING, &strret))) {
        IShellFolder_Release(psfDesktop);
        return FALSE;
    }

    IShellFolder_Release(psfDesktop);
    return SUCCEEDED(StrRetToBufW(&strret, pidl, pwszPath, MAX_PATH));
}
