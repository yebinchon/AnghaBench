
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int field_mod_func; } ;
typedef TYPE_1__ EC_GROUP ;


 int ec_GFp_simple_group_copy (TYPE_1__*,TYPE_1__ const*) ;

int ec_GFp_nist_group_copy(EC_GROUP *dest, const EC_GROUP *src)
{
    dest->field_mod_func = src->field_mod_func;

    return ec_GFp_simple_group_copy(dest, src);
}
