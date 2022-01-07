
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cipher; } ;
typedef TYPE_1__ BIO_ENC_CTX ;
typedef int BIO ;


 TYPE_1__* BIO_get_data (int *) ;
 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int ) ;
 int EVP_CIPHER_CTX_free (int ) ;
 int OPENSSL_clear_free (TYPE_1__*,int) ;

__attribute__((used)) static int enc_free(BIO *a)
{
    BIO_ENC_CTX *b;

    if (a == ((void*)0))
        return 0;

    b = BIO_get_data(a);
    if (b == ((void*)0))
        return 0;

    EVP_CIPHER_CTX_free(b->cipher);
    OPENSSL_clear_free(b, sizeof(BIO_ENC_CTX));
    BIO_set_data(a, ((void*)0));
    BIO_set_init(a, 0);

    return 1;
}
