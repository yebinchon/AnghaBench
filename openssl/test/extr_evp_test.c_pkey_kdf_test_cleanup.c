
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int ctx; int output; } ;
typedef TYPE_1__ PKEY_KDF_DATA ;
typedef TYPE_2__ EVP_TEST ;


 int EVP_PKEY_CTX_free (int ) ;
 int OPENSSL_free (int ) ;

__attribute__((used)) static void pkey_kdf_test_cleanup(EVP_TEST *t)
{
    PKEY_KDF_DATA *kdata = t->data;

    OPENSSL_free(kdata->output);
    EVP_PKEY_CTX_free(kdata->ctx);
}
