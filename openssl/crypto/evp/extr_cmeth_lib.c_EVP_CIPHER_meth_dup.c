
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * lock; int key_len; int block_size; int nid; int * prov; } ;
typedef TYPE_1__ EVP_CIPHER ;
typedef int CRYPTO_RWLOCK ;


 TYPE_1__* EVP_CIPHER_meth_new (int ,int ,int ) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

EVP_CIPHER *EVP_CIPHER_meth_dup(const EVP_CIPHER *cipher)
{
    EVP_CIPHER *to = ((void*)0);





    if (cipher->prov != ((void*)0))
        return ((void*)0);

    if ((to = EVP_CIPHER_meth_new(cipher->nid, cipher->block_size,
                                  cipher->key_len)) != ((void*)0)) {
        CRYPTO_RWLOCK *lock = to->lock;

        memcpy(to, cipher, sizeof(*to));
        to->lock = lock;
    }
    return to;
}
