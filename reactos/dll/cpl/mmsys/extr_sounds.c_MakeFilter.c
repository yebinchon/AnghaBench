
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int* LPWSTR ;


 int ASSERT (int) ;
 int UNICODE_NULL ;
 int wcslen (int*) ;

LPWSTR MakeFilter(LPWSTR psz)
{
    WCHAR *pch;

    ASSERT(psz[0] != UNICODE_NULL &&
           psz[wcslen(psz) - 1] == L'|');
    for (pch = psz; *pch != UNICODE_NULL; pch++)
    {

        if (*pch == L'|')
        {
            *pch = UNICODE_NULL;
        }
    }
    return psz;
}
