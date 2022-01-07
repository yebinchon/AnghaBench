
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ mode; scalar_t__ enc; } ;
struct TYPE_5__ {int * cbc; } ;
struct TYPE_6__ {int ks1; int ks3; int ks2; TYPE_1__ tstream; } ;
typedef TYPE_2__ PROV_TDES_CTX ;
typedef TYPE_3__ PROV_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_set_key_unchecked (int *,int *) ;
 scalar_t__ EVP_CIPH_CBC_MODE ;
 scalar_t__ SPARC_DES_CAPABLE ;
 int * des_t4_ede3_cbc_decrypt ;
 int * des_t4_ede3_cbc_encrypt ;
 int des_t4_key_expand (int *,int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int cipher_hw_tdes_ede2_initkey(PROV_CIPHER_CTX *ctx,
                                       const unsigned char *key, size_t keylen)
{
    PROV_TDES_CTX *tctx = (PROV_TDES_CTX *)ctx;
    DES_cblock *deskey = (DES_cblock *)key;

    tctx->tstream.cbc = ((void*)0);
    DES_set_key_unchecked(&deskey[0], &tctx->ks1);
    DES_set_key_unchecked(&deskey[1], &tctx->ks2);
    memcpy(&tctx->ks3, &tctx->ks1, sizeof(tctx->ks1));
    return 1;
}
