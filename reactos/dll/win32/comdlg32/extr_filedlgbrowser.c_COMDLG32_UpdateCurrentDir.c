
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int pidlAbsCurrent; } ;
struct TYPE_5__ {TYPE_1__ ShellInfos; } ;
typedef int STRRET ;
typedef int LPSHELLFOLDER ;
typedef int HRESULT ;
typedef TYPE_2__ FileOpenDlgInfos ;


 scalar_t__ FAILED (int ) ;
 int IShellFolder_GetDisplayNameOf (int ,int ,int ,int *) ;
 int IShellFolder_Release (int ) ;
 int MAX_PATH ;
 int SHGDN_FORPARSING ;
 int SHGetDesktopFolder (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int SetCurrentDirectoryW (int *) ;
 int StrRetToBufW (int *,int ,int *,int) ;

__attribute__((used)) static void COMDLG32_UpdateCurrentDir(const FileOpenDlgInfos *fodInfos)
{
    LPSHELLFOLDER psfDesktop;
    STRRET strret;
    HRESULT res;

    res = SHGetDesktopFolder(&psfDesktop);
    if (FAILED(res))
        return;

    res = IShellFolder_GetDisplayNameOf(psfDesktop, fodInfos->ShellInfos.pidlAbsCurrent,
                                        SHGDN_FORPARSING, &strret);
    if (SUCCEEDED(res)) {
        WCHAR wszCurrentDir[MAX_PATH];

        res = StrRetToBufW(&strret, fodInfos->ShellInfos.pidlAbsCurrent, wszCurrentDir, MAX_PATH);
        if (SUCCEEDED(res))
            SetCurrentDirectoryW(wszCurrentDir);
    }

    IShellFolder_Release(psfDesktop);
}
