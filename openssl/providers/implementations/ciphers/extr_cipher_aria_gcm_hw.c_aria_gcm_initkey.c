
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ks; } ;
struct TYPE_4__ {TYPE_1__ ks; } ;
typedef int PROV_GCM_CTX ;
typedef TYPE_2__ PROV_ARIA_GCM_CTX ;
typedef int ARIA_KEY ;


 int GCM_HW_SET_KEY_CTR_FN (int *,int ,int ,int *) ;
 int aria_encrypt ;
 int aria_set_encrypt_key ;

__attribute__((used)) static int aria_gcm_initkey(PROV_GCM_CTX *ctx, const unsigned char *key,
                            size_t keylen)
{
    PROV_ARIA_GCM_CTX *actx = (PROV_ARIA_GCM_CTX *)ctx;
    ARIA_KEY *ks = &actx->ks.ks;

    GCM_HW_SET_KEY_CTR_FN(ks, aria_set_encrypt_key, aria_encrypt, ((void*)0));
    return 1;
}
