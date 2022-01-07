
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t blocksize; int ks; int (* block ) (unsigned char const*,unsigned char*,int ) ;} ;
typedef TYPE_1__ PROV_CIPHER_CTX ;


 int stub1 (unsigned char const*,unsigned char*,int ) ;

int cipher_hw_generic_ecb(PROV_CIPHER_CTX *dat, unsigned char *out,
                          const unsigned char *in, size_t len)
{
    size_t i, bl = dat->blocksize;

    if (len < bl)
        return 1;

    for (i = 0, len -= bl; i <= len; i += bl)
        (*dat->block) (in + i, out + i, dat->ks);

    return 1;
}
