
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int * LPCTSTR ;
typedef int BOOL ;


 int GetCurrentDirectory (int,int *) ;
 int MAX_PATH ;
 int SetCurrentDirectory (int *) ;

BOOL IsValidPathName (LPCTSTR pszPath)
{
    TCHAR szOldPath[MAX_PATH];
    BOOL bResult;

    GetCurrentDirectory (MAX_PATH, szOldPath);
    bResult = SetCurrentDirectory (pszPath);

    SetCurrentDirectory (szOldPath);

    return bResult;
}
