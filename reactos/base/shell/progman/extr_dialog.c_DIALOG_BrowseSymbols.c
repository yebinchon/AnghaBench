
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int INT ;
typedef int HWND ;
typedef int BOOL ;


 int DIALOG_AddFilterItem (int **,int ,char*) ;
 int DIALOG_Browse (int ,int *,int *,int ) ;
 int IDS_ALL_FILES ;
 int IDS_LIBRARIES_DLL ;
 int IDS_PROGRAMS ;
 int IDS_SYMBOLS_ICO ;
 int IDS_SYMBOL_FILES ;
 int MAX_STRING_LEN ;

__attribute__((used)) static
BOOL
DIALOG_BrowseSymbols(HWND hWnd, LPWSTR lpszFile, INT nMaxFile)
{
    WCHAR szzFilter[5 * MAX_STRING_LEN + 100];
    LPWSTR p = szzFilter;

    DIALOG_AddFilterItem(&p, IDS_SYMBOL_FILES, L"*.ico;*.exe;*.dll");
    DIALOG_AddFilterItem(&p, IDS_PROGRAMS, L"*.exe");
    DIALOG_AddFilterItem(&p, IDS_LIBRARIES_DLL, L"*.dll");
    DIALOG_AddFilterItem(&p, IDS_SYMBOLS_ICO, L"*.ico");
    DIALOG_AddFilterItem(&p, IDS_ALL_FILES, L"*.*");

    return DIALOG_Browse(hWnd, szzFilter, lpszFile, nMaxFile);
}
