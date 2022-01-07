
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 scalar_t__ wcscmp (int const*,int const*) ;

__attribute__((used)) static int
OptionLookup(const WCHAR *name, const WCHAR *white_list[])
{
    int i;

    for (i = 0; white_list[i]; i++)
    {
        if (wcscmp(white_list[i], name) == 0)
        {
            return i;
        }
    }

    return -1;
}
