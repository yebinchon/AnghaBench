
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* cbc ) (unsigned char const*,unsigned char*,size_t,int ,int ,scalar_t__) ;} ;
struct TYPE_5__ {int block; int iv; int ks; scalar_t__ enc; TYPE_1__ stream; } ;
typedef TYPE_2__ PROV_CIPHER_CTX ;


 int CRYPTO_cbc128_decrypt (unsigned char const*,unsigned char*,size_t,int ,int ,int ) ;
 int CRYPTO_cbc128_encrypt (unsigned char const*,unsigned char*,size_t,int ,int ,int ) ;
 int stub1 (unsigned char const*,unsigned char*,size_t,int ,int ,scalar_t__) ;

int cipher_hw_generic_cbc(PROV_CIPHER_CTX *dat, unsigned char *out,
                          const unsigned char *in, size_t len)
{
    if (dat->stream.cbc)
        (*dat->stream.cbc) (in, out, len, dat->ks, dat->iv, dat->enc);
    else if (dat->enc)
        CRYPTO_cbc128_encrypt(in, out, len, dat->ks, dat->iv, dat->block);
    else
        CRYPTO_cbc128_decrypt(in, out, len, dat->ks, dat->iv, dat->block);

    return 1;
}
