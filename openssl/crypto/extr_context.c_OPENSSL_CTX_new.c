
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;


 int OPENSSL_CTX_free (int *) ;
 int * OPENSSL_zalloc (int) ;
 int context_init (int *) ;

OPENSSL_CTX *OPENSSL_CTX_new(void)
{
    OPENSSL_CTX *ctx = OPENSSL_zalloc(sizeof(*ctx));

    if (ctx != ((void*)0) && !context_init(ctx)) {
        OPENSSL_CTX_free(ctx);
        ctx = ((void*)0);
    }
    return ctx;
}
