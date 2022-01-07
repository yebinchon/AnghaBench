
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;


 int RUN_ONCE (int *,int ) ;
 int * default_context ;
 int default_context_init ;
 int do_default_context_init ;

OPENSSL_CTX *openssl_ctx_get_concrete(OPENSSL_CTX *ctx)
{

    if (ctx == ((void*)0)) {
        if (!RUN_ONCE(&default_context_init, do_default_context_init))
            return 0;
        return default_context;
    }

    return ctx;
}
