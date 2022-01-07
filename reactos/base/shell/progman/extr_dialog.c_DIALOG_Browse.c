
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int openfilename ;
typedef int WCHAR ;
struct TYPE_6__ {int hInstance; } ;
struct TYPE_5__ {int lStructSize; char* lpstrDefExt; int * lpTemplateName; int * lpfnHook; scalar_t__ lCustData; scalar_t__ nFileExtension; scalar_t__ nFileOffset; int * lpstrTitle; scalar_t__ nMaxFileTitle; int * lpstrFileTitle; scalar_t__ nFilterIndex; scalar_t__ nMaxCustFilter; int * lpstrCustomFilter; scalar_t__ Flags; int * lpstrInitialDir; int nMaxFile; int lpstrFile; int lpstrFilter; int hInstance; int hwndOwner; } ;
typedef TYPE_1__ OPENFILENAMEW ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int INT ;
typedef int HWND ;
typedef int BOOL ;


 int ARRAYSIZE (int *) ;
 int GetCurrentDirectoryW (int ,int *) ;
 int GetOpenFileNameW (TYPE_1__*) ;
 TYPE_3__ Globals ;
 int MAX_PATH ;
 int ZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static
BOOL
DIALOG_Browse(HWND hWnd, LPCWSTR lpszzFilter, LPWSTR lpstrFile, INT nMaxFile)
{
    OPENFILENAMEW openfilename;
    WCHAR szDir[MAX_PATH];

    ZeroMemory(&openfilename, sizeof(openfilename));

    GetCurrentDirectoryW(ARRAYSIZE(szDir), szDir);

    openfilename.lStructSize = sizeof(openfilename);
    openfilename.hwndOwner = hWnd;
    openfilename.hInstance = Globals.hInstance;
    openfilename.lpstrFilter = lpszzFilter;
    openfilename.lpstrFile = lpstrFile;
    openfilename.nMaxFile = nMaxFile;
    openfilename.lpstrInitialDir = szDir;
    openfilename.Flags = 0;
    openfilename.lpstrDefExt = L"exe";
    openfilename.lpstrCustomFilter = ((void*)0);
    openfilename.nMaxCustFilter = 0;
    openfilename.nFilterIndex = 0;
    openfilename.lpstrFileTitle = ((void*)0);
    openfilename.nMaxFileTitle = 0;
    openfilename.lpstrTitle = ((void*)0);
    openfilename.nFileOffset = 0;
    openfilename.nFileExtension = 0;
    openfilename.lCustData = 0;
    openfilename.lpfnHook = ((void*)0);
    openfilename.lpTemplateName = ((void*)0);

    return GetOpenFileNameW(&openfilename);
}
