
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* start; int member_0; } ;
typedef TYPE_1__ bstr ;


 int mp_input_append_key_name (TYPE_1__*,int) ;

char *mp_input_get_key_name(int key)
{
    bstr dst = {0};
    mp_input_append_key_name(&dst, key);
    return dst.start;
}
