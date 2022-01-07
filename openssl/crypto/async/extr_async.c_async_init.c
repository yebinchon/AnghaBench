
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREAD_cleanup_local (int *) ;
 int CRYPTO_THREAD_init_local (int *,int *) ;
 int ctxkey ;
 int poolkey ;

int async_init(void)
{
    if (!CRYPTO_THREAD_init_local(&ctxkey, ((void*)0)))
        return 0;

    if (!CRYPTO_THREAD_init_local(&poolkey, ((void*)0))) {
        CRYPTO_THREAD_cleanup_local(&ctxkey);
        return 0;
    }

    return 1;
}
