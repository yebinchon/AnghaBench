
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int skip; TYPE_1__* data; } ;
struct TYPE_7__ {int * ctx; int * p; int * params; } ;
typedef TYPE_1__ KDF_DATA ;
typedef TYPE_2__ EVP_TEST ;
typedef int EVP_KDF ;


 int * EVP_KDF_CTX_new (int *) ;
 int * EVP_KDF_fetch (int *,char const*,int *) ;
 int EVP_KDF_free (int *) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int OSSL_PARAM_construct_end () ;
 int TEST_ptr (TYPE_1__*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int kdf_test_init(EVP_TEST *t, const char *name)
{
    KDF_DATA *kdata;
    EVP_KDF *kdf;
    if (!TEST_ptr(kdata = OPENSSL_zalloc(sizeof(*kdata))))
        return 0;
    kdata->p = kdata->params;
    *kdata->p = OSSL_PARAM_construct_end();

    kdf = EVP_KDF_fetch(((void*)0), name, ((void*)0));
    if (kdf == ((void*)0)) {
        OPENSSL_free(kdata);
        return 0;
    }
    kdata->ctx = EVP_KDF_CTX_new(kdf);
    EVP_KDF_free(kdf);
    if (kdata->ctx == ((void*)0)) {
        OPENSSL_free(kdata);
        return 0;
    }
    t->data = kdata;
    return 1;
}
