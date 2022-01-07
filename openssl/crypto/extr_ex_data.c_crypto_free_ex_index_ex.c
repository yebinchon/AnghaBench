
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int free_func; int dup_func; int new_func; } ;
struct TYPE_8__ {int meth; } ;
struct TYPE_7__ {int ex_data_lock; } ;
typedef TYPE_1__ OSSL_EX_DATA_GLOBAL ;
typedef int OPENSSL_CTX ;
typedef TYPE_2__ EX_CALLBACKS ;
typedef TYPE_3__ EX_CALLBACK ;


 int CRYPTO_THREAD_unlock (int ) ;
 int dummy_dup ;
 int dummy_free ;
 int dummy_new ;
 TYPE_2__* get_and_lock (int *,int) ;
 TYPE_1__* openssl_ctx_get_ex_data_global (int *) ;
 int sk_EX_CALLBACK_num (int ) ;
 TYPE_3__* sk_EX_CALLBACK_value (int ,int) ;

int crypto_free_ex_index_ex(OPENSSL_CTX *ctx, int class_index, int idx)
{
    EX_CALLBACKS *ip = get_and_lock(ctx, class_index);
    EX_CALLBACK *a;
    int toret = 0;
    OSSL_EX_DATA_GLOBAL *global = openssl_ctx_get_ex_data_global(ctx);

    if (global == ((void*)0))
        return 0;

    ip = get_and_lock(ctx, class_index);
    if (ip == ((void*)0))
        return 0;
    if (idx < 0 || idx >= sk_EX_CALLBACK_num(ip->meth))
        goto err;
    a = sk_EX_CALLBACK_value(ip->meth, idx);
    if (a == ((void*)0))
        goto err;
    a->new_func = dummy_new;
    a->dup_func = dummy_dup;
    a->free_func = dummy_free;
    toret = 1;
err:
    CRYPTO_THREAD_unlock(global->ex_data_lock);
    return toret;
}
