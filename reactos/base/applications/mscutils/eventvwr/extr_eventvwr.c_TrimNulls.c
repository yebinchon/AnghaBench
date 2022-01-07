
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int* LPWSTR ;


 scalar_t__ iswspace (int) ;
 int wcslen (int*) ;

void
TrimNulls(LPWSTR s)
{
    WCHAR *c;

    if (s != ((void*)0))
    {
        c = s + wcslen(s) - 1;
        while (c >= s && iswspace(*c))
            --c;
        *++c = L'\0';
    }
}
