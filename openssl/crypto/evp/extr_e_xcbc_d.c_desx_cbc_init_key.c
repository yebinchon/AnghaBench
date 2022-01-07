
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * outw; int * inw; int ks; } ;
typedef int EVP_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_set_key_unchecked (int *,int *) ;
 TYPE_1__* data (int *) ;
 int memcpy (int *,unsigned char const*,int) ;

__attribute__((used)) static int desx_cbc_init_key(EVP_CIPHER_CTX *ctx, const unsigned char *key,
                             const unsigned char *iv, int enc)
{
    DES_cblock *deskey = (DES_cblock *)key;

    DES_set_key_unchecked(deskey, &data(ctx)->ks);
    memcpy(&data(ctx)->inw[0], &key[8], 8);
    memcpy(&data(ctx)->outw[0], &key[16], 8);

    return 1;
}
