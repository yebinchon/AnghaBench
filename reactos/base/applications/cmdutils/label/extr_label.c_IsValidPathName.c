
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPCWSTR ;
typedef int BOOL ;


 int GetCurrentDirectoryW (int,int *) ;
 int MAX_PATH ;
 int SetCurrentDirectoryW (int *) ;

__attribute__((used)) static
BOOL
IsValidPathName(LPCWSTR pszPath)
{
    WCHAR szOldPath[MAX_PATH];
    BOOL bResult;

    GetCurrentDirectoryW(MAX_PATH, szOldPath);
    bResult = SetCurrentDirectoryW(pszPath);

    SetCurrentDirectoryW(szOldPath);

    return bResult;
}
