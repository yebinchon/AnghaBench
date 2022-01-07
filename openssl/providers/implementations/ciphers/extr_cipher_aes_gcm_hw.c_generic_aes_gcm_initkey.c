
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ks; } ;
struct TYPE_7__ {TYPE_1__ ks; } ;
struct TYPE_6__ {int key_set; } ;
typedef TYPE_2__ PROV_GCM_CTX ;
typedef TYPE_3__ PROV_AES_GCM_CTX ;
typedef int AES_KEY ;


 int * AES_ctr32_encrypt ;
 int AES_encrypt ;
 int AES_set_encrypt_key ;
 scalar_t__ BSAES_CAPABLE ;
 int GCM_HW_SET_KEY_CTR_FN (int *,int ,int ,int *) ;
 scalar_t__ HWAES_CAPABLE ;
 int * HWAES_ctr32_encrypt_blocks ;
 int HWAES_encrypt ;
 int HWAES_set_encrypt_key ;
 scalar_t__ VPAES_CAPABLE ;
 int * bsaes_ctr32_encrypt_blocks ;
 int vpaes_encrypt ;
 int vpaes_set_encrypt_key ;

__attribute__((used)) static int generic_aes_gcm_initkey(PROV_GCM_CTX *ctx, const unsigned char *key,
                                   size_t keylen)
{
    PROV_AES_GCM_CTX *actx = (PROV_AES_GCM_CTX *)ctx;
    AES_KEY *ks = &actx->ks.ks;
    {




        GCM_HW_SET_KEY_CTR_FN(ks, AES_set_encrypt_key, AES_encrypt, ((void*)0));

    }
    ctx->key_set = 1;
    return 1;
}
