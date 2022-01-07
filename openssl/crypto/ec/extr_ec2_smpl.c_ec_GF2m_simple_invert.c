
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Y; int X; } ;
typedef TYPE_1__ EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;


 int BN_GF2m_add (int ,int ,int ) ;
 scalar_t__ BN_is_zero (int ) ;
 scalar_t__ EC_POINT_is_at_infinity (int const*,TYPE_1__*) ;
 int EC_POINT_make_affine (int const*,TYPE_1__*,int *) ;

int ec_GF2m_simple_invert(const EC_GROUP *group, EC_POINT *point, BN_CTX *ctx)
{
    if (EC_POINT_is_at_infinity(group, point) || BN_is_zero(point->Y))

        return 1;

    if (!EC_POINT_make_affine(group, point, ctx))
        return 0;
    return BN_GF2m_add(point->Y, point->X, point->Y);
}
