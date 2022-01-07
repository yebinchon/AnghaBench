
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; int block; int enc; int iv; int ks; } ;
typedef TYPE_1__ PROV_CIPHER_CTX ;


 int CRYPTO_cfb128_8_encrypt (unsigned char const*,unsigned char*,size_t,int ,int ,int*,int ,int ) ;

int cipher_hw_generic_cfb8(PROV_CIPHER_CTX *dat, unsigned char *out,
                           const unsigned char *in, size_t len)
{
    int num = dat->num;

    CRYPTO_cfb128_8_encrypt(in, out, len, dat->ks, dat->iv, &num, dat->enc,
                            dat->block);
    dat->num = num;

    return 1;
}
