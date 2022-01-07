
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int strlenW (char const*) ;

__attribute__((used)) static const WCHAR* get_filename(const WCHAR* name, const WCHAR* endptr)
{
    const WCHAR* ptr;

    if (!endptr) endptr = name + strlenW(name);
    for (ptr = endptr - 1; ptr >= name; ptr--)
    {
        if (*ptr == '/' || *ptr == '\\') break;
    }
    return ++ptr;
}
