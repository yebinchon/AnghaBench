
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ex_data; int * ex_data_lock; } ;
typedef TYPE_1__ OSSL_EX_DATA_GLOBAL ;
typedef int OPENSSL_CTX ;
typedef int EX_CALLBACKS ;


 int CRYPTO_EX_INDEX__COUNT ;
 int CRYPTO_F_GET_AND_LOCK ;
 int CRYPTO_THREAD_write_lock (int *) ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_PASSED_INVALID_ARGUMENT ;
 TYPE_1__* openssl_ctx_get_ex_data_global (int *) ;

__attribute__((used)) static EX_CALLBACKS *get_and_lock(OPENSSL_CTX *ctx, int class_index)
{
    EX_CALLBACKS *ip;
    OSSL_EX_DATA_GLOBAL *global = ((void*)0);

    if (class_index < 0 || class_index >= CRYPTO_EX_INDEX__COUNT) {
        CRYPTOerr(CRYPTO_F_GET_AND_LOCK, ERR_R_PASSED_INVALID_ARGUMENT);
        return ((void*)0);
    }

    global = openssl_ctx_get_ex_data_global(ctx);
    if (global == ((void*)0) || global->ex_data_lock == ((void*)0)) {
         return ((void*)0);
    }

    CRYPTO_THREAD_write_lock(global->ex_data_lock);
    ip = &global->ex_data[class_index];
    return ip;
}
