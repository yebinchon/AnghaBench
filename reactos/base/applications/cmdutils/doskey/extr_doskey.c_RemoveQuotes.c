
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int* LPWSTR ;


 int wcslen (int*) ;

__attribute__((used)) static LPWSTR RemoveQuotes(LPWSTR str)
{
    WCHAR *end;
    if (*str == L'"' && *(end = str + wcslen(str) - 1) == L'"')
    {
        str++;
        *end = L'\0';
    }
    return str;
}
