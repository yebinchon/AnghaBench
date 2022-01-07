
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_F_BN_GF2M_MOD_SOLVE_QUAD_ARR ;
 int BN_GF2m_add (int const*,int const*,int const*) ;
 scalar_t__ BN_GF2m_cmp (int const*,int const*) ;
 int BN_GF2m_mod_arr (int const*,int const*,int const*) ;
 int BN_GF2m_mod_mul_arr (int const*,int const*,int const*,int const*,int *) ;
 int BN_GF2m_mod_sqr_arr (int const*,int const*,int const*,int *) ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_ONE ;
 int BN_R_NO_SOLUTION ;
 int BN_R_TOO_MANY_ITERATIONS ;
 int BN_copy (int const*,int const*) ;
 scalar_t__ BN_is_zero (int const*) ;
 int BN_priv_rand_ex (int const*,int const,int ,int ,int *) ;
 int BN_zero (int const*) ;
 int BNerr (int ,int ) ;
 int MAX_ITERATIONS ;
 int bn_check_top (int const*) ;

int BN_GF2m_mod_solve_quad_arr(BIGNUM *r, const BIGNUM *a_, const int p[],
                               BN_CTX *ctx)
{
    int ret = 0, count = 0, j;
    BIGNUM *a, *z, *rho, *w, *w2, *tmp;

    bn_check_top(a_);

    if (p[0] == 0) {

        BN_zero(r);
        return 1;
    }

    BN_CTX_start(ctx);
    a = BN_CTX_get(ctx);
    z = BN_CTX_get(ctx);
    w = BN_CTX_get(ctx);
    if (w == ((void*)0))
        goto err;

    if (!BN_GF2m_mod_arr(a, a_, p))
        goto err;

    if (BN_is_zero(a)) {
        BN_zero(r);
        ret = 1;
        goto err;
    }

    if (p[0] & 0x1) {

        if (!BN_copy(z, a))
            goto err;
        for (j = 1; j <= (p[0] - 1) / 2; j++) {
            if (!BN_GF2m_mod_sqr_arr(z, z, p, ctx))
                goto err;
            if (!BN_GF2m_mod_sqr_arr(z, z, p, ctx))
                goto err;
            if (!BN_GF2m_add(z, z, a))
                goto err;
        }

    } else {

        rho = BN_CTX_get(ctx);
        w2 = BN_CTX_get(ctx);
        tmp = BN_CTX_get(ctx);
        if (tmp == ((void*)0))
            goto err;
        do {
            if (!BN_priv_rand_ex(rho, p[0], BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY,
                                 ctx))
                goto err;
            if (!BN_GF2m_mod_arr(rho, rho, p))
                goto err;
            BN_zero(z);
            if (!BN_copy(w, rho))
                goto err;
            for (j = 1; j <= p[0] - 1; j++) {
                if (!BN_GF2m_mod_sqr_arr(z, z, p, ctx))
                    goto err;
                if (!BN_GF2m_mod_sqr_arr(w2, w, p, ctx))
                    goto err;
                if (!BN_GF2m_mod_mul_arr(tmp, w2, a, p, ctx))
                    goto err;
                if (!BN_GF2m_add(z, z, tmp))
                    goto err;
                if (!BN_GF2m_add(w, w2, rho))
                    goto err;
            }
            count++;
        } while (BN_is_zero(w) && (count < MAX_ITERATIONS));
        if (BN_is_zero(w)) {
            BNerr(BN_F_BN_GF2M_MOD_SOLVE_QUAD_ARR, BN_R_TOO_MANY_ITERATIONS);
            goto err;
        }
    }

    if (!BN_GF2m_mod_sqr_arr(w, z, p, ctx))
        goto err;
    if (!BN_GF2m_add(w, z, w))
        goto err;
    if (BN_GF2m_cmp(w, a)) {
        BNerr(BN_F_BN_GF2M_MOD_SOLVE_QUAD_ARR, BN_R_NO_SOLUTION);
        goto err;
    }

    if (!BN_copy(r, z))
        goto err;
    bn_check_top(r);

    ret = 1;

 err:
    BN_CTX_end(ctx);
    return ret;
}
