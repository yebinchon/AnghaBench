
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const BIGNUM ;


 int BN_F_BN_GF2M_MOD ;
 int BN_GF2m_mod_arr (int const*,int const*,int*) ;
 int BN_GF2m_poly2arr (int const*,int*,scalar_t__) ;
 int BN_R_INVALID_LENGTH ;
 int BNerr (int ,int ) ;
 scalar_t__ OSSL_NELEM (int*) ;
 int bn_check_top (int const*) ;

int BN_GF2m_mod(BIGNUM *r, const BIGNUM *a, const BIGNUM *p)
{
    int ret = 0;
    int arr[6];
    bn_check_top(a);
    bn_check_top(p);
    ret = BN_GF2m_poly2arr(p, arr, OSSL_NELEM(arr));
    if (!ret || ret > (int)OSSL_NELEM(arr)) {
        BNerr(BN_F_BN_GF2M_MOD, BN_R_INVALID_LENGTH);
        return 0;
    }
    ret = BN_GF2m_mod_arr(r, a, arr);
    bn_check_top(r);
    return ret;
}
