
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwResult ;
typedef int LPCTSTR ;
typedef int HKEY ;
typedef int DWORD ;
typedef scalar_t__ BYTE ;
typedef int BOOL ;


 int FALSE ;
 int QueryGeneric (int ,int ,int ,int*,int) ;
 int REG_DWORD ;
 int TRUE ;

__attribute__((used)) static BOOL QueryByte(HKEY hKey, LPCTSTR pszValueName, BYTE *pbResult)
{
    DWORD dwResult;
    if (!QueryGeneric(hKey, pszValueName, REG_DWORD, &dwResult, sizeof(dwResult)))
        return FALSE;
    if (dwResult >= 0x100)
        return FALSE;
    *pbResult = (BYTE) dwResult;
    return TRUE;
}
