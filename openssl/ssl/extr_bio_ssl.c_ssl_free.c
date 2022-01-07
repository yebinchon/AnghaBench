
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ssl; } ;
typedef TYPE_1__ BIO_SSL ;
typedef int BIO ;


 int BIO_clear_flags (int *,int ) ;
 TYPE_1__* BIO_get_data (int *) ;
 scalar_t__ BIO_get_init (int *) ;
 scalar_t__ BIO_get_shutdown (int *) ;
 int BIO_set_init (int *,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int SSL_free (int *) ;
 int SSL_shutdown (int *) ;

__attribute__((used)) static int ssl_free(BIO *a)
{
    BIO_SSL *bs;

    if (a == ((void*)0))
        return 0;
    bs = BIO_get_data(a);
    if (bs->ssl != ((void*)0))
        SSL_shutdown(bs->ssl);
    if (BIO_get_shutdown(a)) {
        if (BIO_get_init(a))
            SSL_free(bs->ssl);

        BIO_clear_flags(a, ~0);
        BIO_set_init(a, 0);
    }
    OPENSSL_free(bs);
    return 1;
}
