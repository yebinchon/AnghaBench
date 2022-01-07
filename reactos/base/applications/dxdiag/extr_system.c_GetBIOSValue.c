
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ SIZE_T ;
typedef int PVOID ;
typedef int PCHAR ;
typedef int LPWSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ GetRegValue (int ,char*,int ,int ,int ,int) ;
 scalar_t__ GetSMBiosStringW (int ,int ,int,scalar_t__) ;
 int HKEY_LOCAL_MACHINE ;
 int REG_SZ ;
 scalar_t__ wcslen (int ) ;

__attribute__((used)) static
SIZE_T
GetBIOSValue(
    BOOL UseSMBios,
    PCHAR DmiString,
    LPWSTR RegValue,
    PVOID pBuf,
    DWORD cchBuf,
    BOOL bTrim)
{
    SIZE_T Length = 0;
    BOOL Result;

    if (UseSMBios)
    {
        Length = GetSMBiosStringW(DmiString, pBuf, cchBuf, bTrim);
    }
    if (Length == 0)
    {
        Result = GetRegValue(HKEY_LOCAL_MACHINE, L"Hardware\\Description\\System\\BIOS", RegValue, REG_SZ, pBuf, cchBuf * sizeof(WCHAR));
        if (Result)
        {
            Length = wcslen(pBuf);
        }
    }
    return Length;
}
