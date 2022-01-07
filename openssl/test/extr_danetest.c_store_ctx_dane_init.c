
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;
typedef int SSL ;


 int SSL_get0_dane (int *) ;
 int X509_STORE_CTX_set0_dane (int *,int ) ;

__attribute__((used)) static void store_ctx_dane_init(X509_STORE_CTX *store_ctx, SSL *ssl)
{
    X509_STORE_CTX_set0_dane(store_ctx, SSL_get0_dane(ssl));
}
