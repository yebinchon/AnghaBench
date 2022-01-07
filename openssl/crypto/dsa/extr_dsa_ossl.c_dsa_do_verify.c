
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; int const* q; int const* p; int pub_key; int g; TYPE_1__* meth; int lock; int method_mont_p; } ;
struct TYPE_5__ {int (* dsa_mod_exp ) (TYPE_2__*,int const*,int ,int const*,int ,int const*,int const*,int *,int *) ;} ;
typedef int DSA_SIG ;
typedef TYPE_2__ DSA ;
typedef int BN_MONT_CTX ;
typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int * BN_MONT_CTX_set_locked (int *,int ,int const*,int *) ;
 int * BN_bin2bn (unsigned char const*,int,int const*) ;
 int BN_free (int const*) ;
 scalar_t__ BN_is_negative (int const*) ;
 scalar_t__ BN_is_zero (int const*) ;
 int BN_mod (int const*,int const*,int const*,int *) ;
 int BN_mod_exp2_mont (int const*,int ,int const*,int ,int const*,int const*,int *,int *) ;
 int * BN_mod_inverse (int const*,int const*,int const*,int *) ;
 int BN_mod_mul (int const*,int const*,int const*,int const*,int *) ;
 int const* BN_new () ;
 int BN_num_bits (int const*) ;
 scalar_t__ BN_ucmp (int const*,int const*) ;
 int DSA_FLAG_CACHE_MONT_P ;
 int DSA_F_DSA_DO_VERIFY ;
 int DSA_R_BAD_Q_VALUE ;
 int DSA_R_MISSING_PARAMETERS ;
 int DSA_R_MODULUS_TOO_LARGE ;
 int DSA_SIG_get0 (int *,int const**,int const**) ;
 int DSAerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int OPENSSL_DSA_MAX_MODULUS_BITS ;
 int stub1 (TYPE_2__*,int const*,int ,int const*,int ,int const*,int const*,int *,int *) ;

__attribute__((used)) static int dsa_do_verify(const unsigned char *dgst, int dgst_len,
                         DSA_SIG *sig, DSA *dsa)
{
    BN_CTX *ctx;
    BIGNUM *u1, *u2, *t1;
    BN_MONT_CTX *mont = ((void*)0);
    const BIGNUM *r, *s;
    int ret = -1, i;
    if (!dsa->p || !dsa->q || !dsa->g) {
        DSAerr(DSA_F_DSA_DO_VERIFY, DSA_R_MISSING_PARAMETERS);
        return -1;
    }

    i = BN_num_bits(dsa->q);

    if (i != 160 && i != 224 && i != 256) {
        DSAerr(DSA_F_DSA_DO_VERIFY, DSA_R_BAD_Q_VALUE);
        return -1;
    }

    if (BN_num_bits(dsa->p) > OPENSSL_DSA_MAX_MODULUS_BITS) {
        DSAerr(DSA_F_DSA_DO_VERIFY, DSA_R_MODULUS_TOO_LARGE);
        return -1;
    }
    u1 = BN_new();
    u2 = BN_new();
    t1 = BN_new();
    ctx = BN_CTX_new();
    if (u1 == ((void*)0) || u2 == ((void*)0) || t1 == ((void*)0) || ctx == ((void*)0))
        goto err;

    DSA_SIG_get0(sig, &r, &s);

    if (BN_is_zero(r) || BN_is_negative(r) ||
        BN_ucmp(r, dsa->q) >= 0) {
        ret = 0;
        goto err;
    }
    if (BN_is_zero(s) || BN_is_negative(s) ||
        BN_ucmp(s, dsa->q) >= 0) {
        ret = 0;
        goto err;
    }




    if ((BN_mod_inverse(u2, s, dsa->q, ctx)) == ((void*)0))
        goto err;


    if (dgst_len > (i >> 3))





        dgst_len = (i >> 3);
    if (BN_bin2bn(dgst, dgst_len, u1) == ((void*)0))
        goto err;


    if (!BN_mod_mul(u1, u1, u2, dsa->q, ctx))
        goto err;


    if (!BN_mod_mul(u2, r, u2, dsa->q, ctx))
        goto err;

    if (dsa->flags & DSA_FLAG_CACHE_MONT_P) {
        mont = BN_MONT_CTX_set_locked(&dsa->method_mont_p,
                                      dsa->lock, dsa->p, ctx);
        if (!mont)
            goto err;
    }

    if (dsa->meth->dsa_mod_exp != ((void*)0)) {
        if (!dsa->meth->dsa_mod_exp(dsa, t1, dsa->g, u1, dsa->pub_key, u2,
                                    dsa->p, ctx, mont))
            goto err;
    } else {
        if (!BN_mod_exp2_mont(t1, dsa->g, u1, dsa->pub_key, u2, dsa->p, ctx,
                              mont))
            goto err;
    }


    if (!BN_mod(u1, t1, dsa->q, ctx))
        goto err;




    ret = (BN_ucmp(u1, r) == 0);

 err:
    if (ret < 0)
        DSAerr(DSA_F_DSA_DO_VERIFY, ERR_R_BN_LIB);
    BN_CTX_free(ctx);
    BN_free(u1);
    BN_free(u2);
    BN_free(t1);
    return ret;
}
