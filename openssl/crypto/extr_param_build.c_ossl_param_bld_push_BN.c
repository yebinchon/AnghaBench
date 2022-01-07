
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* bn; } ;
typedef TYPE_1__ OSSL_PARAM_BLD_DEF ;
typedef int OSSL_PARAM_BLD ;
typedef int BIGNUM ;


 scalar_t__ BN_FLG_SECURE ;
 scalar_t__ BN_get_flags (int const*,scalar_t__) ;
 int BN_num_bytes (int const*) ;
 int CRYPTO_F_OSSL_PARAM_BLD_PUSH_BN ;
 int CRYPTO_R_ZERO_LENGTH_NUMBER ;
 int CRYPTOerr (int ,int ) ;
 int OSSL_PARAM_UNSIGNED_INTEGER ;
 TYPE_1__* param_push (int *,char const*,int,int,int ,int) ;

int ossl_param_bld_push_BN(OSSL_PARAM_BLD *bld, const char *key,
                           const BIGNUM *bn)
{
    int sz = -1, secure = 0;
    OSSL_PARAM_BLD_DEF *pd;

    if (bn != ((void*)0)) {
        sz = BN_num_bytes(bn);
        if (sz < 0) {
            CRYPTOerr(CRYPTO_F_OSSL_PARAM_BLD_PUSH_BN,
                      CRYPTO_R_ZERO_LENGTH_NUMBER);
            return 0;
        }
        if (BN_get_flags(bn, BN_FLG_SECURE) == BN_FLG_SECURE)
            secure = 1;
    }
    pd = param_push(bld, key, sz, sz >= 0 ? sz : 0,
                    OSSL_PARAM_UNSIGNED_INTEGER, secure);
    if (pd == ((void*)0))
        return 0;
    pd->bn = bn;
    return 1;
}
