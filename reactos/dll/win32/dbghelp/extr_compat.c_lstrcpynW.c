
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int UINT ;
typedef scalar_t__* LPWSTR ;



WCHAR* lstrcpynW(WCHAR* lpString1, const WCHAR* lpString2, int iMaxLength)
{
    LPWSTR d = lpString1;
    const WCHAR* s = lpString2;
    UINT count = iMaxLength;

    while ((count > 1) && *s)
    {
        count--;
        *d++ = *s++;
    }

    if (count)
        *d = 0;

    return lpString1;
}
