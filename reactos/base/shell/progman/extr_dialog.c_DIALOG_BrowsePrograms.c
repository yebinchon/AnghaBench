
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
 int IDS_PROGRAMS ;
 int MAX_STRING_LEN ;

__attribute__((used)) static
BOOL
DIALOG_BrowsePrograms(HWND hWnd, LPWSTR lpszFile, INT nMaxFile)
{
    WCHAR szzFilter[2 * MAX_STRING_LEN + 100];
    LPWSTR p = szzFilter;

    DIALOG_AddFilterItem(&p, IDS_PROGRAMS , L"*.exe;*.pif;*.com;*.bat;*.cmd");
    DIALOG_AddFilterItem(&p, IDS_ALL_FILES, L"*.*");

    return DIALOG_Browse(hWnd, szzFilter, lpszFile, nMaxFile);
}
