
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mont_data; int order; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_secure_new () ;
 int BN_CTX_start (int *) ;
 int BN_mod_exp_mont (int *,int const*,int *,int ,int *,int *) ;
 int BN_set_word (int *,int) ;
 int BN_sub (int *,int ,int *) ;

__attribute__((used)) static int ec_field_inverse_mod_ord(const EC_GROUP *group, BIGNUM *r,
                                    const BIGNUM *x, BN_CTX *ctx)
{
    BIGNUM *e = ((void*)0);
    int ret = 0;

    BN_CTX *new_ctx = ((void*)0);

    if (ctx == ((void*)0))
        ctx = new_ctx = BN_CTX_secure_new();

    if (ctx == ((void*)0))
        return 0;

    if (group->mont_data == ((void*)0))
        goto err;

    BN_CTX_start(ctx);
    if ((e = BN_CTX_get(ctx)) == ((void*)0))
        goto err;





    if (!BN_set_word(e, 2))
        goto err;
    if (!BN_sub(e, group->order, e))
        goto err;




    if (!BN_mod_exp_mont(r, x, e, group->order, ctx, group->mont_data))
        goto err;

    ret = 1;

 err:
    BN_CTX_end(ctx);

    BN_CTX_free(new_ctx);

    return ret;
}
