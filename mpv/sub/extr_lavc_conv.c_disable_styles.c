
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* start; scalar_t__ len; } ;
typedef TYPE_1__ bstr ;


 TYPE_1__ bstr0 (char*) ;
 TYPE_1__ bstr_cut (TYPE_1__,scalar_t__) ;
 int bstr_find (TYPE_1__,TYPE_1__) ;

__attribute__((used)) static void disable_styles(bstr header)
{
    bstr style = bstr0("\nStyle: ");
    while (header.len) {
        int n = bstr_find(header, style);
        if (n < 0)
            break;
        header.start[n + 1] = '#';
        header = bstr_cut(header, n + style.len);
    }
}
