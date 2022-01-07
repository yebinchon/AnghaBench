
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int ctx; } ;
struct TYPE_13__ {int argp; int argl; int (* new_func ) (void*,int *,TYPE_4__*,int,int ,int ) ;} ;
struct TYPE_12__ {int meth; } ;
struct TYPE_11__ {int ex_data_lock; } ;
typedef TYPE_1__ OSSL_EX_DATA_GLOBAL ;
typedef TYPE_2__ EX_CALLBACKS ;
typedef TYPE_3__ EX_CALLBACK ;
typedef TYPE_4__ CRYPTO_EX_DATA ;


 int CRYPTO_THREAD_unlock (int ) ;
 void* CRYPTO_get_ex_data (TYPE_4__*,int) ;
 TYPE_2__* get_and_lock (int ,int) ;
 TYPE_1__* openssl_ctx_get_ex_data_global (int ) ;
 TYPE_3__* sk_EX_CALLBACK_value (int ,int) ;
 int stub1 (void*,int *,TYPE_4__*,int,int ,int ) ;

int CRYPTO_alloc_ex_data(int class_index, void *obj, CRYPTO_EX_DATA *ad,
                         int idx)
{
    EX_CALLBACK *f;
    EX_CALLBACKS *ip;
    void *curval;
    OSSL_EX_DATA_GLOBAL *global = openssl_ctx_get_ex_data_global(ad->ctx);

    if (global == ((void*)0))
        return 0;

    curval = CRYPTO_get_ex_data(ad, idx);


    if (curval != ((void*)0))
        return 1;

    ip = get_and_lock(ad->ctx, class_index);
    if (ip == ((void*)0))
        return 0;
    f = sk_EX_CALLBACK_value(ip->meth, idx);
    CRYPTO_THREAD_unlock(global->ex_data_lock);





    if (f->new_func == ((void*)0))
        return 0;

    f->new_func(obj, ((void*)0), ad, idx, f->argl, f->argp);

    return 1;
}
