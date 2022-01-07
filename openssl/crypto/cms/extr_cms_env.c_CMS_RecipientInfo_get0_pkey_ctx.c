
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* kari; TYPE_1__* ktri; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__ d; } ;
struct TYPE_7__ {int * pctx; } ;
struct TYPE_6__ {int * pctx; } ;
typedef int EVP_PKEY_CTX ;
typedef TYPE_4__ CMS_RecipientInfo ;


 scalar_t__ CMS_RECIPINFO_AGREE ;
 scalar_t__ CMS_RECIPINFO_TRANS ;

EVP_PKEY_CTX *CMS_RecipientInfo_get0_pkey_ctx(CMS_RecipientInfo *ri)
{
    if (ri->type == CMS_RECIPINFO_TRANS)
        return ri->d.ktri->pctx;
    else if (ri->type == CMS_RECIPINFO_AGREE)
        return ri->d.kari->pctx;
    return ((void*)0);
}
