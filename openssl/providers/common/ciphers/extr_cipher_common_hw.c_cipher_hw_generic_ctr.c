
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctr; } ;
struct TYPE_5__ {unsigned int num; int block; int buf; int iv; int ks; TYPE_1__ stream; } ;
typedef TYPE_2__ PROV_CIPHER_CTX ;


 int CRYPTO_ctr128_encrypt (unsigned char const*,unsigned char*,size_t,int ,int ,int ,unsigned int*,int ) ;
 int CRYPTO_ctr128_encrypt_ctr32 (unsigned char const*,unsigned char*,size_t,int ,int ,int ,unsigned int*,int ) ;

int cipher_hw_generic_ctr(PROV_CIPHER_CTX *dat, unsigned char *out,
                          const unsigned char *in, size_t len)
{
    unsigned int num = dat->num;

    if (dat->stream.ctr)
        CRYPTO_ctr128_encrypt_ctr32(in, out, len, dat->ks, dat->iv, dat->buf,
                                    &num, dat->stream.ctr);
    else
        CRYPTO_ctr128_encrypt(in, out, len, dat->ks, dat->iv, dat->buf,
                              &num, dat->block);
    dat->num = num;

    return 1;
}
