
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int ** ext ;
 size_t strlenW (int const* const) ;
 scalar_t__ strncmpiW (int const*,int const* const,size_t) ;

__attribute__((used)) static int match_ext(const WCHAR* ptr, size_t len)
{
    const WCHAR* const *e;
    size_t l;

    for (e = ext; *e; e++)
    {
        l = strlenW(*e);
        if (l >= len) return 0;
        if (strncmpiW(&ptr[len - l], *e, l)) continue;
        return l;
    }
    return 0;
}
