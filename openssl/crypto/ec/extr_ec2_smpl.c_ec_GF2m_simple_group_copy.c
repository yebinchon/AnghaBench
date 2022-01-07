
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* poly; int b; int a; int field; } ;
typedef TYPE_1__ EC_GROUP ;


 int BN_BITS2 ;
 int BN_copy (int ,int ) ;
 int bn_set_all_zero (int ) ;
 int * bn_wexpand (int ,int) ;

int ec_GF2m_simple_group_copy(EC_GROUP *dest, const EC_GROUP *src)
{
    if (!BN_copy(dest->field, src->field))
        return 0;
    if (!BN_copy(dest->a, src->a))
        return 0;
    if (!BN_copy(dest->b, src->b))
        return 0;
    dest->poly[0] = src->poly[0];
    dest->poly[1] = src->poly[1];
    dest->poly[2] = src->poly[2];
    dest->poly[3] = src->poly[3];
    dest->poly[4] = src->poly[4];
    dest->poly[5] = src->poly[5];
    if (bn_wexpand(dest->a, (int)(dest->poly[0] + BN_BITS2 - 1) / BN_BITS2) ==
        ((void*)0))
        return 0;
    if (bn_wexpand(dest->b, (int)(dest->poly[0] + BN_BITS2 - 1) / BN_BITS2) ==
        ((void*)0))
        return 0;
    bn_set_all_zero(dest->a);
    bn_set_all_zero(dest->b);
    return 1;
}
