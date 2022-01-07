
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iv_len; } ;
typedef TYPE_1__ EVP_CIPHER ;



int EVP_CIPHER_meth_set_iv_length(EVP_CIPHER *cipher, int iv_len)
{
    if (cipher->iv_len != 0)
        return 0;

    cipher->iv_len = iv_len;
    return 1;
}
