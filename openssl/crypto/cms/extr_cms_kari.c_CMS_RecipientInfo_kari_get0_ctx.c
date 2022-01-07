
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* kari; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_5__ {int * ctx; } ;
typedef int EVP_CIPHER_CTX ;
typedef TYPE_3__ CMS_RecipientInfo ;


 scalar_t__ CMS_RECIPINFO_AGREE ;

EVP_CIPHER_CTX *CMS_RecipientInfo_kari_get0_ctx(CMS_RecipientInfo *ri)
{
    if (ri->type == CMS_RECIPINFO_AGREE)
        return ri->d.kari->ctx;
    return ((void*)0);
}
