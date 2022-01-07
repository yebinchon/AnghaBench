
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx_size; } ;
typedef TYPE_1__ EVP_CIPHER ;



int EVP_CIPHER_meth_set_impl_ctx_size(EVP_CIPHER *cipher, int ctx_size)
{
    if (cipher->ctx_size != 0)
        return 0;

    cipher->ctx_size = ctx_size;
    return 1;
}
