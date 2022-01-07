
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bstr ;


 scalar_t__ bstr_equals0 (int ,char*) ;

__attribute__((used)) static int find_list_bstr(char **list, bstr item)
{
    for (int n = 0; list && list[n]; n++) {
        if (bstr_equals0(item, list[n]))
            return n;
    }
    return -1;
}
