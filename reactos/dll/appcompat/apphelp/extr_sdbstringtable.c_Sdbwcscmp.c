
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;



int Sdbwcscmp(const WCHAR* s1, const WCHAR* s2)
{
    while (*s1 == *s2)
    {
        if (*s1 == 0)
            return 0;
        s1++;
        s2++;
    }
    return *s1 - *s2;
}
