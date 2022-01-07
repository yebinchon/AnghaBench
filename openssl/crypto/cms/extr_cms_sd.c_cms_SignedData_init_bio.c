
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_12__ {TYPE_2__* signedData; } ;
struct TYPE_14__ {TYPE_3__ d; } ;
struct TYPE_13__ {int digestAlgorithms; } ;
struct TYPE_11__ {TYPE_1__* encapContentInfo; } ;
struct TYPE_10__ {scalar_t__ partial; } ;
typedef TYPE_4__ CMS_SignedData ;
typedef TYPE_5__ CMS_ContentInfo ;
typedef int BIO ;


 int BIO_free_all (int *) ;
 int BIO_push (int *,int *) ;
 int * cms_DigestAlgorithm_init_bio (int *) ;
 TYPE_4__* cms_get0_signed (TYPE_5__*) ;
 int cms_sd_set_version (TYPE_4__*) ;
 int sk_X509_ALGOR_num (int ) ;
 int * sk_X509_ALGOR_value (int ,int) ;

BIO *cms_SignedData_init_bio(CMS_ContentInfo *cms)
{
    int i;
    CMS_SignedData *sd;
    BIO *chain = ((void*)0);
    sd = cms_get0_signed(cms);
    if (!sd)
        return ((void*)0);
    if (cms->d.signedData->encapContentInfo->partial)
        cms_sd_set_version(sd);
    for (i = 0; i < sk_X509_ALGOR_num(sd->digestAlgorithms); i++) {
        X509_ALGOR *digestAlgorithm;
        BIO *mdbio;
        digestAlgorithm = sk_X509_ALGOR_value(sd->digestAlgorithms, i);
        mdbio = cms_DigestAlgorithm_init_bio(digestAlgorithm);
        if (!mdbio)
            goto err;
        if (chain)
            BIO_push(chain, mdbio);
        else
            chain = mdbio;
    }
    return chain;
 err:
    BIO_free_all(chain);
    return ((void*)0);
}
