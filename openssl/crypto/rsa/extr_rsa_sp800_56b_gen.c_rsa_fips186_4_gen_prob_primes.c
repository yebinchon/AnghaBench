
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirty_cnt; int * q; int * p; } ;
typedef TYPE_1__ RSA ;
typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_clear (int *) ;
 void* BN_secure_new () ;
 int RSA_FIPS1864_MIN_KEYGEN_KEYSIZE ;
 int RSA_F_RSA_FIPS186_4_GEN_PROB_PRIMES ;
 int RSA_R_INVALID_KEY_LENGTH ;
 int RSA_R_PUB_EXPONENT_OUT_OF_RANGE ;
 int RSAerr (int ,int ) ;
 int bn_rsa_fips186_4_gen_prob_primes (int *,int *,int *,int *,int const*,int const*,int const*,int,int const*,int *,int *) ;
 int rsa_check_pminusq_diff (int *,int *,int *,int) ;
 int rsa_check_public_exponent (int const*) ;

int rsa_fips186_4_gen_prob_primes(RSA *rsa, BIGNUM *p1, BIGNUM *p2,
                                  BIGNUM *Xpout, const BIGNUM *Xp,
                                  const BIGNUM *Xp1, const BIGNUM *Xp2,
                                  BIGNUM *q1, BIGNUM *q2, BIGNUM *Xqout,
                                  const BIGNUM *Xq, const BIGNUM *Xq1,
                                  const BIGNUM *Xq2, int nbits,
                                  const BIGNUM *e, BN_CTX *ctx, BN_GENCB *cb)
{
    int ret = 0, ok;
    BIGNUM *Xpo = ((void*)0), *Xqo = ((void*)0), *tmp = ((void*)0);





    if (nbits < RSA_FIPS1864_MIN_KEYGEN_KEYSIZE) {
        RSAerr(RSA_F_RSA_FIPS186_4_GEN_PROB_PRIMES, RSA_R_INVALID_KEY_LENGTH);
        return 0;
    }

    if (!rsa_check_public_exponent(e)) {
        RSAerr(RSA_F_RSA_FIPS186_4_GEN_PROB_PRIMES,
               RSA_R_PUB_EXPONENT_OUT_OF_RANGE);
        return 0;
    }






    BN_CTX_start(ctx);
    tmp = BN_CTX_get(ctx);
    Xpo = (Xpout != ((void*)0)) ? Xpout : BN_CTX_get(ctx);
    Xqo = (Xqout != ((void*)0)) ? Xqout : BN_CTX_get(ctx);
    if (tmp == ((void*)0) || Xpo == ((void*)0) || Xqo == ((void*)0))
        goto err;

    if (rsa->p == ((void*)0))
        rsa->p = BN_secure_new();
    if (rsa->q == ((void*)0))
        rsa->q = BN_secure_new();
    if (rsa->p == ((void*)0) || rsa->q == ((void*)0))
        goto err;


    if (!bn_rsa_fips186_4_gen_prob_primes(rsa->p, Xpo, p1, p2, Xp, Xp1, Xp2,
                                          nbits, e, ctx, cb))
        goto err;
    for(;;) {

        if (!bn_rsa_fips186_4_gen_prob_primes(rsa->q, Xqo, q1, q2, Xq, Xq1,
                                              Xq2, nbits, e, ctx, cb))
            goto err;


        ok = rsa_check_pminusq_diff(tmp, Xpo, Xqo, nbits);
        if (ok < 0)
            goto err;
        if (ok == 0)
            continue;


        ok = rsa_check_pminusq_diff(tmp, rsa->p, rsa->q, nbits);
        if (ok < 0)
            goto err;
        if (ok == 0)
            continue;
        break;
    }
    rsa->dirty_cnt++;
    ret = 1;
err:

    if (Xpo != Xpout)
        BN_clear(Xpo);
    if (Xqo != Xqout)
        BN_clear(Xqo);
    BN_clear(tmp);

    BN_CTX_end(ctx);
    return ret;
}
