
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_F_BN_GF2M_MOD_SQR ;
 int BN_GF2m_mod_sqr_arr (int const*,int const*,int*,int *) ;
 int BN_GF2m_poly2arr (int const*,int*,int const) ;
 int BN_R_INVALID_LENGTH ;
 int BN_num_bits (int const*) ;
 int BNerr (int ,int ) ;
 int OPENSSL_free (int*) ;
 int* OPENSSL_malloc (int) ;
 int bn_check_top (int const*) ;

int BN_GF2m_mod_sqr(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx)
{
    int ret = 0;
    const int max = BN_num_bits(p) + 1;
    int *arr = ((void*)0);

    bn_check_top(a);
    bn_check_top(p);
    if ((arr = OPENSSL_malloc(sizeof(*arr) * max)) == ((void*)0))
        goto err;
    ret = BN_GF2m_poly2arr(p, arr, max);
    if (!ret || ret > max) {
        BNerr(BN_F_BN_GF2M_MOD_SQR, BN_R_INVALID_LENGTH);
        goto err;
    }
    ret = BN_GF2m_mod_sqr_arr(r, a, arr, ctx);
    bn_check_top(r);
 err:
    OPENSSL_free(arr);
    return ret;
}
