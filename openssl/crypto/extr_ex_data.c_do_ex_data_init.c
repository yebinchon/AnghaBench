
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ex_data_lock; } ;
typedef TYPE_1__ OSSL_EX_DATA_GLOBAL ;
typedef int OPENSSL_CTX ;


 int * CRYPTO_THREAD_lock_new () ;
 TYPE_1__* openssl_ctx_get_ex_data_global (int *) ;

int do_ex_data_init(OPENSSL_CTX *ctx)
{
    OSSL_EX_DATA_GLOBAL *global = openssl_ctx_get_ex_data_global(ctx);

    if (global == ((void*)0))
        return 0;

    global->ex_data_lock = CRYPTO_THREAD_lock_new();
    return global->ex_data_lock != ((void*)0);
}
