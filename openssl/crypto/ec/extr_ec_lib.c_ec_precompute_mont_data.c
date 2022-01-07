
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mont_data; int order; int libctx; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new_ex (int ) ;
 int BN_MONT_CTX_free (int *) ;
 int * BN_MONT_CTX_new () ;
 int BN_MONT_CTX_set (int *,int ,int *) ;

__attribute__((used)) static int ec_precompute_mont_data(EC_GROUP *group)
{
    BN_CTX *ctx = BN_CTX_new_ex(group->libctx);
    int ret = 0;

    BN_MONT_CTX_free(group->mont_data);
    group->mont_data = ((void*)0);

    if (ctx == ((void*)0))
        goto err;

    group->mont_data = BN_MONT_CTX_new();
    if (group->mont_data == ((void*)0))
        goto err;

    if (!BN_MONT_CTX_set(group->mont_data, group->order, ctx)) {
        BN_MONT_CTX_free(group->mont_data);
        group->mont_data = ((void*)0);
        goto err;
    }

    ret = 1;

 err:

    BN_CTX_free(ctx);
    return ret;
}
