
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bstr ;


 int bstr0 (char const* const) ;
 scalar_t__ bstrcasecmp (int ,int ) ;

__attribute__((used)) static bool test_ext_list(bstr ext, const char *const *list)
{
    for (int n = 0; list[n]; n++) {
        if (bstrcasecmp(bstr0(list[n]), ext) == 0)
            return 1;
    }
    return 0;
}
