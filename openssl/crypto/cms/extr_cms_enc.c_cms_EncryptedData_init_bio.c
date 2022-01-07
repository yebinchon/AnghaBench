
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ cipher; } ;
struct TYPE_6__ {TYPE_2__* encryptedData; } ;
struct TYPE_8__ {TYPE_1__ d; } ;
struct TYPE_7__ {int version; TYPE_5__* encryptedContentInfo; scalar_t__ unprotectedAttrs; } ;
typedef TYPE_2__ CMS_EncryptedData ;
typedef TYPE_3__ CMS_ContentInfo ;
typedef int BIO ;


 int * cms_EncryptedContent_init_bio (TYPE_5__*) ;

BIO *cms_EncryptedData_init_bio(const CMS_ContentInfo *cms)
{
    CMS_EncryptedData *enc = cms->d.encryptedData;
    if (enc->encryptedContentInfo->cipher && enc->unprotectedAttrs)
        enc->version = 2;
    return cms_EncryptedContent_init_bio(enc->encryptedContentInfo);
}
