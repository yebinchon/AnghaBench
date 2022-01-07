
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int LPTSTR ;
typedef int LPCTSTR ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int QueryGeneric (int ,int ,int ,int ,int) ;
 int REG_SZ ;

__attribute__((used)) static BOOL QueryString(HKEY hKey, LPCTSTR pszValueName, LPTSTR pszResult, DWORD dwResultSize)
{
    return QueryGeneric(hKey, pszValueName, REG_SZ, pszResult, dwResultSize * sizeof(TCHAR));
}
