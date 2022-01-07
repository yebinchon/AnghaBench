
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ks3; int ks2; int ks1; } ;
typedef TYPE_1__ PROV_TDES_CTX ;
typedef int PROV_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_set_key_unchecked (int *,int *) ;
 int memcpy (int *,unsigned char const*,int) ;

__attribute__((used)) static int cipher_hw_desx_cbc_initkey(PROV_CIPHER_CTX *ctx,
                                      const unsigned char *key, size_t keylen)
{
    PROV_TDES_CTX *tctx = (PROV_TDES_CTX *)ctx;
    DES_cblock *deskey = (DES_cblock *)key;

    DES_set_key_unchecked(deskey, &tctx->ks1);
    memcpy(&tctx->ks2, &key[8], 8);
    memcpy(&tctx->ks3, &key[16], 8);

    return 1;
}
