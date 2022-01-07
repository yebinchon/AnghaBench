
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int * ctx; int * sk; } ;
struct TYPE_16__ {int argp; int argl; int (* free_func ) (void*,void*,TYPE_4__*,int,int ,int ) ;} ;
struct TYPE_15__ {int meth; } ;
struct TYPE_14__ {int ex_data_lock; } ;
typedef TYPE_1__ OSSL_EX_DATA_GLOBAL ;
typedef TYPE_2__ EX_CALLBACKS ;
typedef TYPE_3__ EX_CALLBACK ;
typedef TYPE_4__ CRYPTO_EX_DATA ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 void* CRYPTO_get_ex_data (TYPE_4__*,int) ;
 int OPENSSL_free (TYPE_3__**) ;
 TYPE_3__** OPENSSL_malloc (int) ;
 scalar_t__ OSSL_NELEM (TYPE_3__**) ;
 TYPE_2__* get_and_lock (int *,int) ;
 TYPE_1__* openssl_ctx_get_ex_data_global (int *) ;
 int sk_EX_CALLBACK_num (int ) ;
 TYPE_3__* sk_EX_CALLBACK_value (int ,int) ;
 int sk_void_free (int *) ;
 int stub1 (void*,void*,TYPE_4__*,int,int ,int ) ;

void CRYPTO_free_ex_data(int class_index, void *obj, CRYPTO_EX_DATA *ad)
{
    int mx, i;
    EX_CALLBACKS *ip;
    void *ptr;
    EX_CALLBACK *f;
    EX_CALLBACK *stack[10];
    EX_CALLBACK **storage = ((void*)0);
    OSSL_EX_DATA_GLOBAL *global;

    if ((ip = get_and_lock(ad->ctx, class_index)) == ((void*)0))
        goto err;
    global = openssl_ctx_get_ex_data_global(ad->ctx);
    if (global == ((void*)0))
        goto err;

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

    for (i = 0; i < mx; i++) {
        if (storage != ((void*)0))
            f = storage[i];
        else {
            CRYPTO_THREAD_write_lock(global->ex_data_lock);
            f = sk_EX_CALLBACK_value(ip->meth, i);
            CRYPTO_THREAD_unlock(global->ex_data_lock);
        }
        if (f != ((void*)0) && f->free_func != ((void*)0)) {
            ptr = CRYPTO_get_ex_data(ad, i);
            f->free_func(obj, ptr, ad, i, f->argl, f->argp);
        }
    }

    if (storage != stack)
        OPENSSL_free(storage);
 err:
    sk_void_free(ad->sk);
    ad->sk = ((void*)0);
    ad->ctx = ((void*)0);
}
