
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {long argl; int * free_func; int * dup_func; int * new_func; void* argp; } ;
struct TYPE_9__ {int * meth; } ;
struct TYPE_8__ {int ex_data_lock; } ;
typedef TYPE_1__ OSSL_EX_DATA_GLOBAL ;
typedef int OPENSSL_CTX ;
typedef TYPE_2__ EX_CALLBACKS ;
typedef TYPE_3__ EX_CALLBACK ;
typedef int CRYPTO_EX_new ;
typedef int CRYPTO_EX_free ;
typedef int CRYPTO_EX_dup ;


 int CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX_EX ;
 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_3__*) ;
 scalar_t__ OPENSSL_malloc (int) ;
 TYPE_2__* get_and_lock (int *,int) ;
 TYPE_1__* openssl_ctx_get_ex_data_global (int *) ;
 int * sk_EX_CALLBACK_new_null () ;
 int sk_EX_CALLBACK_num (int *) ;
 int sk_EX_CALLBACK_push (int *,int *) ;
 int sk_EX_CALLBACK_set (int *,int,TYPE_3__*) ;

int crypto_get_ex_new_index_ex(OPENSSL_CTX *ctx, int class_index, long argl,
                               void *argp, CRYPTO_EX_new *new_func,
                               CRYPTO_EX_dup *dup_func,
                               CRYPTO_EX_free *free_func)
{
    int toret = -1;
    EX_CALLBACK *a;
    EX_CALLBACKS *ip;
    OSSL_EX_DATA_GLOBAL *global = openssl_ctx_get_ex_data_global(ctx);

    if (global == ((void*)0))
        return -1;

    ip = get_and_lock(ctx, class_index);
    if (ip == ((void*)0))
        return -1;

    if (ip->meth == ((void*)0)) {
        ip->meth = sk_EX_CALLBACK_new_null();


        if (ip->meth == ((void*)0)
            || !sk_EX_CALLBACK_push(ip->meth, ((void*)0))) {
            CRYPTOerr(CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX_EX, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    a = (EX_CALLBACK *)OPENSSL_malloc(sizeof(*a));
    if (a == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX_EX, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    a->argl = argl;
    a->argp = argp;
    a->new_func = new_func;
    a->dup_func = dup_func;
    a->free_func = free_func;

    if (!sk_EX_CALLBACK_push(ip->meth, ((void*)0))) {
        CRYPTOerr(CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX_EX, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(a);
        goto err;
    }
    toret = sk_EX_CALLBACK_num(ip->meth) - 1;
    (void)sk_EX_CALLBACK_set(ip->meth, toret, a);

 err:
    CRYPTO_THREAD_unlock(global->ex_data_lock);
    return toret;
}
