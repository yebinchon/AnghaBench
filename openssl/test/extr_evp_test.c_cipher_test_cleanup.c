
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fetched_cipher; int tag; int * aad; int plaintext; int ciphertext; int iv; int key; } ;
struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ EVP_TEST ;
typedef TYPE_2__ CIPHER_DATA ;


 int AAD_NUM ;
 int EVP_CIPHER_meth_free (int ) ;
 int OPENSSL_free (int ) ;

__attribute__((used)) static void cipher_test_cleanup(EVP_TEST *t)
{
    int i;
    CIPHER_DATA *cdat = t->data;

    OPENSSL_free(cdat->key);
    OPENSSL_free(cdat->iv);
    OPENSSL_free(cdat->ciphertext);
    OPENSSL_free(cdat->plaintext);
    for (i = 0; i < AAD_NUM; i++)
        OPENSSL_free(cdat->aad[i]);
    OPENSSL_free(cdat->tag);
    EVP_CIPHER_meth_free(cdat->fetched_cipher);
}
