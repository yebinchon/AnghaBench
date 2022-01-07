
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int * wcschr (int const*,int) ;
 int* wcsistr (int const*,int*) ;
 int wcslen (int*) ;

__attribute__((used)) static
wchar_t * wcsistr_plus(const wchar_t *s, wchar_t *b)
{
    wchar_t * result = wcsistr(s, b);
    UINT len = wcslen(b);

    if (!result && b[len - 1] == L' ' && wcschr(s, L',') != ((void*)0))
    {
        b[len - 1] = L',';
        result = wcsistr(s, b);
        b[len - 1] = L' ';
        if (!result)
        {
            b[0] = L',';
            result = wcsistr(s, b);
            b[0] = L' ';
        }
    }
    if (!result && b[len - 1] == L' ' && wcschr(s, L'(') != ((void*)0))
    {
        b[len - 1] = L'(';
        result = wcsistr(s, b);
        b[len - 1] = L' ';
    }
    if (!result && b[len - 1] == L' ' && wcschr(s, L'_') != ((void*)0))
    {
        b[0] = L'_';
        result = wcsistr(s, b);
        b[0] = L' ';
    }
    if (!result && b[0] == L' ' && b[len - 1] == L' ' && wcschr(s, L')') != ((void*)0))
    {
        b[0] = L')';
        result = wcsistr(s, b);
        if (!result && wcschr(s, L'.'))
        {
            b[len - 1] = L'.';
            result = wcsistr(s, b);
            b[len - 1] = L' ';
        }
        b[0] = L' ';
    }
    return result;
}
