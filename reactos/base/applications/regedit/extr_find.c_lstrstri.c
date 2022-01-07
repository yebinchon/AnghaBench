
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef scalar_t__ INT ;


 int CompareStringW (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LOCALE_SYSTEM_DEFAULT ;
 int NORM_IGNORECASE ;
 scalar_t__ wcslen (scalar_t__) ;

__attribute__((used)) static LPWSTR lstrstri(LPCWSTR psz1, LPCWSTR psz2)
{
    INT i, cch1, cch2;

    cch1 = wcslen(psz1);
    cch2 = wcslen(psz2);
    for(i = 0; i <= cch1 - cch2; i++)
    {
        if (CompareStringW(LOCALE_SYSTEM_DEFAULT, NORM_IGNORECASE,
                           psz1 + i, cch2, psz2, cch2) == 2)
            return (LPWSTR) (psz1 + i);
    }
    return ((void*)0);
}
