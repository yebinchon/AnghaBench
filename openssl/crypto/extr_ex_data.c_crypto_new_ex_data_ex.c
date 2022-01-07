
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int * sk; int * ctx; } ;
struct TYPE_16__ {int argp; int argl; int (* new_func ) (void*,void*,TYPE_4__*,int,int ,int ) ;} ;
struct TYPE_15__ {int meth; } ;
struct TYPE_14__ {int ex_data_lock; } ;
typedef TYPE_1__ OSSL_EX_DATA_GLOBAL ;
typedef int OPENSSL_CTX ;
typedef TYPE_2__ EX_CALLBACKS ;
typedef TYPE_3__ EX_CALLBACK ;
typedef TYPE_4__ CRYPTO_EX_DATA ;


 int CRYPTO_F_CRYPTO_NEW_EX_DATA_EX ;
 int CRYPTO_THREAD_unlock (int ) ;
 void* CRYPTO_get_ex_data (TYPE_4__*,int) ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_3__**) ;
 TYPE_3__** OPENSSL_malloc (int) ;
 scalar_t__ OSSL_NELEM (TYPE_3__**) ;
 TYPE_2__* get_and_lock (int *,int) ;
 TYPE_1__* openssl_ctx_get_ex_data_global (int *) ;
 int sk_EX_CALLBACK_num (int ) ;
 TYPE_3__* sk_EX_CALLBACK_value (int ,int) ;
 int stub1 (void*,void*,TYPE_4__*,int,int ,int ) ;

int crypto_new_ex_data_ex(OPENSSL_CTX *ctx, int class_index, void *obj,
                          CRYPTO_EX_DATA *ad)
{
    int mx, i;
    void *ptr;
    EX_CALLBACK **storage = ((void*)0);
    EX_CALLBACK *stack[10];
    EX_CALLBACKS *ip;
    OSSL_EX_DATA_GLOBAL *global = openssl_ctx_get_ex_data_global(ctx);

    if (global == ((void*)0))
        return 0;

    ip = get_and_lock(ctx, class_index);
    if (ip == ((void*)0))
        return 0;

    ad->ctx = ctx;
    ad->sk = ((void*)0);

    mx = sk_EX_CALLBACK_num(ip->meth);
    if (mx > 0) {
        if (mx < (int)OSSL_NELEM(stack))
            storage = stack;
        else
            storage = OPENSSL_malloc(sizeof(*storage) * mx);
        if (storage != ((void*)0))
            for (i = 0; i < mx; i++)
                storage[i] = sk_EX_CALLBACK_value(ip->meth, i);
    }
    CRYPTO_THREAD_unlock(global->ex_data_lock);

    if (mx > 0 && storage == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_CRYPTO_NEW_EX_DATA_EX, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    for (i = 0; i < mx; i++) {
        if (storage[i] != ((void*)0) && storage[i]->new_func != ((void*)0)) {
            ptr = CRYPTO_get_ex_data(ad, i);
            storage[i]->new_func(obj, ptr, ad, i,
                                 storage[i]->argl, storage[i]->argp);
        }
    }
    if (storage != stack)
        OPENSSL_free(storage);
    return 1;
}
