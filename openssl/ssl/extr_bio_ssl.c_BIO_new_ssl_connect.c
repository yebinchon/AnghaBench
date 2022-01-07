
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int * BIO_new_ssl (int *,int) ;
 int * BIO_push (int *,int *) ;
 int BIO_s_connect () ;

BIO *BIO_new_ssl_connect(SSL_CTX *ctx)
{

    BIO *ret = ((void*)0), *con = ((void*)0), *ssl = ((void*)0);

    if ((con = BIO_new(BIO_s_connect())) == ((void*)0))
        return ((void*)0);
    if ((ssl = BIO_new_ssl(ctx, 1)) == ((void*)0))
        goto err;
    if ((ret = BIO_push(ssl, con)) == ((void*)0))
        goto err;
    return ret;
 err:
    BIO_free(con);

    return ((void*)0);
}
