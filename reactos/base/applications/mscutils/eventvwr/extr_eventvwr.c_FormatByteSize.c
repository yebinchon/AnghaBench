
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ LPWSTR ;
typedef int LONGLONG ;


 scalar_t__ FormatInteger (int ,scalar_t__,scalar_t__) ;
 int IDS_BYTES_FORMAT ;
 scalar_t__ LoadStringW (int ,int ,scalar_t__,scalar_t__) ;
 int StringCchCopyExW (scalar_t__,scalar_t__,char*,scalar_t__*,size_t*,int ) ;
 int hInst ;

UINT
FormatByteSize(LONGLONG cbSize, LPWSTR pwszResult, UINT cchResultMax)
{
    UINT cchWritten, cchRemaining;
    LPWSTR pwszEnd;
    size_t cchStringRemaining;


    cchWritten = FormatInteger(cbSize, pwszResult, cchResultMax);
    if (!cchWritten)
        return 0;


    pwszEnd = pwszResult + cchWritten;
    cchRemaining = cchResultMax - cchWritten;
    StringCchCopyExW(pwszEnd, cchRemaining, L" ", &pwszEnd, &cchStringRemaining, 0);
    cchRemaining = (UINT)cchStringRemaining;
    cchWritten = LoadStringW(hInst, IDS_BYTES_FORMAT, pwszEnd, cchRemaining);
    cchRemaining -= cchWritten;

    return cchResultMax - cchRemaining;
}
