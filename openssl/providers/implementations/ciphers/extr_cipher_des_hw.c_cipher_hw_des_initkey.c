
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ mode; scalar_t__ enc; } ;
struct TYPE_7__ {int * cbc; } ;
struct TYPE_6__ {int ks; } ;
struct TYPE_8__ {TYPE_2__ dstream; TYPE_1__ dks; } ;
typedef TYPE_3__ PROV_DES_CTX ;
typedef TYPE_4__ PROV_CIPHER_CTX ;
typedef int DES_key_schedule ;
typedef int DES_cblock ;


 int DES_set_key_unchecked (int *,int *) ;
 scalar_t__ EVP_CIPH_CBC_MODE ;
 scalar_t__ SPARC_DES_CAPABLE ;
 int * des_t4_cbc_decrypt ;
 int * des_t4_cbc_encrypt ;
 int des_t4_key_expand (int *,int *) ;

__attribute__((used)) static int cipher_hw_des_initkey(PROV_CIPHER_CTX *ctx,
                                 const unsigned char *key, size_t keylen)
{
    PROV_DES_CTX *dctx = (PROV_DES_CTX *)ctx;
    DES_cblock *deskey = (DES_cblock *)key;
    DES_key_schedule *ks = &dctx->dks.ks;

    dctx->dstream.cbc = ((void*)0);
    DES_set_key_unchecked(deskey, ks);
    return 1;
}
