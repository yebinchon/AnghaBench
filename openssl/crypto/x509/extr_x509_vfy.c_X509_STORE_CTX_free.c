
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;


 int OPENSSL_free (int *) ;
 int X509_STORE_CTX_cleanup (int *) ;

void X509_STORE_CTX_free(X509_STORE_CTX *ctx)
{
    if (ctx == ((void*)0))
        return;

    X509_STORE_CTX_cleanup(ctx);
    OPENSSL_free(ctx);
}
