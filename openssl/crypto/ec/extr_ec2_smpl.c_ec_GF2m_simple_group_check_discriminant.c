
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int poly; int b; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_GF2m_mod_arr (int *,int ,int ) ;
 scalar_t__ BN_is_zero (int *) ;
 int EC_F_EC_GF2M_SIMPLE_GROUP_CHECK_DISCRIMINANT ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;

int ec_GF2m_simple_group_check_discriminant(const EC_GROUP *group,
                                            BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *b;

    BN_CTX *new_ctx = ((void*)0);

    if (ctx == ((void*)0)) {
        ctx = new_ctx = BN_CTX_new();
        if (ctx == ((void*)0)) {
            ECerr(EC_F_EC_GF2M_SIMPLE_GROUP_CHECK_DISCRIMINANT,
                  ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    BN_CTX_start(ctx);
    b = BN_CTX_get(ctx);
    if (b == ((void*)0))
        goto err;

    if (!BN_GF2m_mod_arr(b, group->b, group->poly))
        goto err;





    if (BN_is_zero(b))
        goto err;

    ret = 1;

 err:
    BN_CTX_end(ctx);

    BN_CTX_free(new_ctx);

    return ret;
}
