
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* data; } ;
struct TYPE_6__ {int ctx; int output; TYPE_1__* params; } ;
struct TYPE_5__ {int data; int * key; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef TYPE_2__ KDF_DATA ;
typedef TYPE_3__ EVP_TEST ;


 int EVP_KDF_CTX_free (int ) ;
 int OPENSSL_free (int ) ;

__attribute__((used)) static void kdf_test_cleanup(EVP_TEST *t)
{
    KDF_DATA *kdata = t->data;
    OSSL_PARAM *p;

    for (p = kdata->params; p->key != ((void*)0); p++)
        OPENSSL_free(p->data);
    OPENSSL_free(kdata->output);
    EVP_KDF_CTX_free(kdata->ctx);
}
