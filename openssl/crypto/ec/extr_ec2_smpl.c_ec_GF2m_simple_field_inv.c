
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_GF2m_mod_inv (int *,int const*,int ,int *) ;
 int EC_F_EC_GF2M_SIMPLE_FIELD_INV ;
 int EC_R_CANNOT_INVERT ;
 int ECerr (int ,int ) ;

__attribute__((used)) static int ec_GF2m_simple_field_inv(const EC_GROUP *group, BIGNUM *r,
                                    const BIGNUM *a, BN_CTX *ctx)
{
    int ret;

    if (!(ret = BN_GF2m_mod_inv(r, a, group->field, ctx)))
        ECerr(EC_F_EC_GF2M_SIMPLE_FIELD_INV, EC_R_CANNOT_INVERT);
    return ret;
}
