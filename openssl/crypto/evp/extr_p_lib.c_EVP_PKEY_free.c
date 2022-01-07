
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int attributes; int lock; int references; } ;
typedef TYPE_1__ EVP_PKEY ;


 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int EVP_PKEY_free_it (TYPE_1__*) ;
 int OPENSSL_free (TYPE_1__*) ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,TYPE_1__*) ;
 int X509_ATTRIBUTE_free ;
 int sk_X509_ATTRIBUTE_pop_free (int ,int ) ;

void EVP_PKEY_free(EVP_PKEY *x)
{
    int i;

    if (x == ((void*)0))
        return;

    CRYPTO_DOWN_REF(&x->references, &i, x->lock);
    REF_PRINT_COUNT("EVP_PKEY", x);
    if (i > 0)
        return;
    REF_ASSERT_ISNT(i < 0);
    EVP_PKEY_free_it(x);
    CRYPTO_THREAD_lock_free(x->lock);
    sk_X509_ATTRIBUTE_pop_free(x->attributes, X509_ATTRIBUTE_free);
    OPENSSL_free(x);
}
