
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCTSTR ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int QueryGeneric (int ,int ,int ,int *,int) ;
 int REG_DWORD ;

__attribute__((used)) static BOOL QueryDword(HKEY hKey, LPCTSTR pszValueName, DWORD *pdwResult)
{
    return QueryGeneric(hKey, pszValueName, REG_DWORD, pdwResult, sizeof(*pdwResult));
}
