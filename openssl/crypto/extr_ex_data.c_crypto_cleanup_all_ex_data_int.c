
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * meth; } ;
struct TYPE_4__ {int * ex_data_lock; TYPE_2__* ex_data; } ;
typedef TYPE_1__ OSSL_EX_DATA_GLOBAL ;
typedef int OPENSSL_CTX ;
typedef TYPE_2__ EX_CALLBACKS ;


 int CRYPTO_EX_INDEX__COUNT ;
 int CRYPTO_THREAD_lock_free (int *) ;
 int cleanup_cb ;
 TYPE_1__* openssl_ctx_get_ex_data_global (int *) ;
 int sk_EX_CALLBACK_pop_free (int *,int ) ;

void crypto_cleanup_all_ex_data_int(OPENSSL_CTX *ctx)
{
    int i;
    OSSL_EX_DATA_GLOBAL *global = openssl_ctx_get_ex_data_global(ctx);

    if (global == ((void*)0))
        return;

    for (i = 0; i < CRYPTO_EX_INDEX__COUNT; ++i) {
        EX_CALLBACKS *ip = &global->ex_data[i];

        sk_EX_CALLBACK_pop_free(ip->meth, cleanup_cb);
        ip->meth = ((void*)0);
    }

    CRYPTO_THREAD_lock_free(global->ex_data_lock);
    global->ex_data_lock = ((void*)0);
}
