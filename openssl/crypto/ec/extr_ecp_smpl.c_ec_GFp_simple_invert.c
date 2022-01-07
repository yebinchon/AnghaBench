
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int field; } ;
struct TYPE_7__ {int Y; } ;
typedef TYPE_1__ EC_POINT ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;


 scalar_t__ BN_is_zero (int ) ;
 int BN_usub (int ,int ,int ) ;
 scalar_t__ EC_POINT_is_at_infinity (TYPE_2__ const*,TYPE_1__*) ;

int ec_GFp_simple_invert(const EC_GROUP *group, EC_POINT *point, BN_CTX *ctx)
{
    if (EC_POINT_is_at_infinity(group, point) || BN_is_zero(point->Y))

        return 1;

    return BN_usub(point->Y, group->field, point->Y);
}
