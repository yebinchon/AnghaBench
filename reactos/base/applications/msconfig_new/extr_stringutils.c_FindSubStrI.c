
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPTSTR ;
typedef int * LPCTSTR ;


 scalar_t__ _totupper (scalar_t__) ;

LPTSTR FindSubStrI(LPCTSTR str, LPCTSTR strSearch)
{
    LPTSTR cp = (LPTSTR)str;
    LPTSTR s1, s2;

    if (!*strSearch)
        return (LPTSTR)str;

    while (*cp)
    {
        s1 = cp;
        s2 = (LPTSTR)strSearch;

        while (*s1 && *s2 && (_totupper(*s1) == _totupper(*s2)))
            ++s1, ++s2;

        if (!*s2)
            return cp;

        ++cp;
    }

    return ((void*)0);
}
