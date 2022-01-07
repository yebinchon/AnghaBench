
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Z; scalar_t__ Z_is_one; } ;
typedef TYPE_1__ EC_POINT ;
typedef int EC_GROUP ;


 int BN_zero (int ) ;

int ec_GF2m_simple_point_set_to_infinity(const EC_GROUP *group,
                                         EC_POINT *point)
{
    point->Z_is_one = 0;
    BN_zero(point->Z);
    return 1;
}
