
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ num; int num_alloc; int ** data; } ;
typedef int (* OPENSSL_sk_freefunc ) (void*) ;
typedef int * (* OPENSSL_sk_copyfunc ) (int *) ;
typedef TYPE_1__ OPENSSL_STACK ;


 int CRYPTO_F_OPENSSL_SK_DEEP_COPY ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int OPENSSL_sk_free (TYPE_1__*) ;
 int ** OPENSSL_zalloc (int) ;
 scalar_t__ min_nodes ;

OPENSSL_STACK *OPENSSL_sk_deep_copy(const OPENSSL_STACK *sk,
                             OPENSSL_sk_copyfunc copy_func,
                             OPENSSL_sk_freefunc free_func)
{
    OPENSSL_STACK *ret;
    int i;

    if ((ret = OPENSSL_malloc(sizeof(*ret))) == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_OPENSSL_SK_DEEP_COPY, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }


    *ret = *sk;

    if (sk->num == 0) {

        ret->data = ((void*)0);
        ret->num_alloc = 0;
        return ret;
    }

    ret->num_alloc = sk->num > min_nodes ? sk->num : min_nodes;
    ret->data = OPENSSL_zalloc(sizeof(*ret->data) * ret->num_alloc);
    if (ret->data == ((void*)0)) {
        OPENSSL_free(ret);
        return ((void*)0);
    }

    for (i = 0; i < ret->num; ++i) {
        if (sk->data[i] == ((void*)0))
            continue;
        if ((ret->data[i] = copy_func(sk->data[i])) == ((void*)0)) {
            while (--i >= 0)
                if (ret->data[i] != ((void*)0))
                    free_func((void *)ret->data[i]);
            OPENSSL_sk_free(ret);
            return ((void*)0);
        }
    }
    return ret;
}
