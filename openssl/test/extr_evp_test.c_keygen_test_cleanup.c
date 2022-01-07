
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {struct TYPE_5__* keyname; int genctx; } ;
typedef TYPE_1__ KEYGEN_TEST_DATA ;
typedef TYPE_2__ EVP_TEST ;


 int EVP_PKEY_CTX_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void keygen_test_cleanup(EVP_TEST *t)
{
    KEYGEN_TEST_DATA *keygen = t->data;

    EVP_PKEY_CTX_free(keygen->genctx);
    OPENSSL_free(keygen->keyname);
    OPENSSL_free(t->data);
    t->data = ((void*)0);
}
