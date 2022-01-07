
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;


 int OPENSSL_free (int *) ;
 int context_deinit (int *) ;

void OPENSSL_CTX_free(OPENSSL_CTX *ctx)
{
    if (ctx != ((void*)0))
        context_deinit(ctx);
    OPENSSL_free(ctx);
}
