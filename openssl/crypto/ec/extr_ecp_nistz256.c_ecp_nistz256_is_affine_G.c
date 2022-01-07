
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Z; int Y; int X; } ;
typedef TYPE_1__ EC_POINT ;


 scalar_t__ P256_LIMBS ;
 scalar_t__ bn_get_top (int ) ;
 int bn_get_words (int ) ;
 int def_xG ;
 int def_yG ;
 scalar_t__ is_equal (int ,int ) ;
 scalar_t__ is_one (int ) ;

__attribute__((used)) static int ecp_nistz256_is_affine_G(const EC_POINT *generator)
{
    return (bn_get_top(generator->X) == P256_LIMBS) &&
        (bn_get_top(generator->Y) == P256_LIMBS) &&
        is_equal(bn_get_words(generator->X), def_xG) &&
        is_equal(bn_get_words(generator->Y), def_yG) &&
        is_one(generator->Z);
}
