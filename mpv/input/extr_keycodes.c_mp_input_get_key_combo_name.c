
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* start; int member_0; } ;
typedef TYPE_1__ bstr ;


 int bstr0 (char*) ;
 int bstr_xappend (int *,TYPE_1__*,int ) ;
 int mp_input_append_key_name (TYPE_1__*,int const) ;

char *mp_input_get_key_combo_name(const int *keys, int max)
{
    bstr dst = {0};
    while (max > 0) {
        mp_input_append_key_name(&dst, *keys);
        if (--max && *++keys)
            bstr_xappend(((void*)0), &dst, bstr0("-"));
        else
            break;
    }
    return dst.start;
}
