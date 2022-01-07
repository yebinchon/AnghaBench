
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_CLOSE ;
 int BIO_f_ssl () ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_set_ssl (int *,int *,int ) ;
 int * SSL_new (int *) ;
 int SSL_set_accept_state (int *) ;
 int SSL_set_connect_state (int *) ;

BIO *BIO_new_ssl(SSL_CTX *ctx, int client)
{
    BIO *ret;
    SSL *ssl;

    if ((ret = BIO_new(BIO_f_ssl())) == ((void*)0))
        return ((void*)0);
    if ((ssl = SSL_new(ctx)) == ((void*)0)) {
        BIO_free(ret);
        return ((void*)0);
    }
    if (client)
        SSL_set_connect_state(ssl);
    else
        SSL_set_accept_state(ssl);

    BIO_set_ssl(ret, ssl, BIO_CLOSE);
    return ret;
}
