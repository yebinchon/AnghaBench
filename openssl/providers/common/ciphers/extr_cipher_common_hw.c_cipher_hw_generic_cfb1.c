
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; int flags; int block; int enc; int iv; int ks; } ;
typedef TYPE_1__ PROV_CIPHER_CTX ;


 int CRYPTO_cfb128_1_encrypt (unsigned char const*,unsigned char*,size_t,int ,int ,int*,int ,int ) ;
 int EVP_CIPH_FLAG_LENGTH_BITS ;
 size_t MAXBITCHUNK ;

int cipher_hw_generic_cfb1(PROV_CIPHER_CTX *dat, unsigned char *out,
                           const unsigned char *in, size_t len)
{
    int num = dat->num;

    if ((dat->flags & EVP_CIPH_FLAG_LENGTH_BITS) != 0) {
        CRYPTO_cfb128_1_encrypt(in, out, len, dat->ks, dat->iv, &num,
                                dat->enc, dat->block);
        dat->num = num;
        return 1;
    }

    while (len >= MAXBITCHUNK) {
        CRYPTO_cfb128_1_encrypt(in, out, MAXBITCHUNK * 8, dat->ks,
                                dat->iv, &num, dat->enc, dat->block);
        len -= MAXBITCHUNK;
        out += MAXBITCHUNK;
        in += MAXBITCHUNK;
    }
    if (len)
        CRYPTO_cfb128_1_encrypt(in, out, len * 8, dat->ks, dat->iv, &num,
                                dat->enc, dat->block);

    dat->num = num;

    return 1;
}
