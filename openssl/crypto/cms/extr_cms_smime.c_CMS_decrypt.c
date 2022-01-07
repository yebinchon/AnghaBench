
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_12__ {TYPE_2__* envelopedData; } ;
struct TYPE_13__ {TYPE_3__ d; } ;
struct TYPE_11__ {TYPE_1__* encryptedContentInfo; } ;
struct TYPE_10__ {int debug; int havenocert; } ;
typedef int EVP_PKEY ;
typedef TYPE_4__ CMS_ContentInfo ;
typedef int BIO ;


 unsigned int CMS_DEBUG_DECRYPT ;
 int CMS_F_CMS_DECRYPT ;
 int CMS_R_TYPE_NOT_ENVELOPED_DATA ;
 int * CMS_dataInit (TYPE_4__*,int *) ;
 int CMS_decrypt_set1_pkey (TYPE_4__*,int *,int *) ;
 int CMS_get0_type (TYPE_4__*) ;
 int CMSerr (int ,int ) ;
 scalar_t__ NID_pkcs7_enveloped ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int check_content (TYPE_4__*) ;
 int cms_copy_content (int *,int *,unsigned int) ;
 int do_free_upto (int *,int *) ;

int CMS_decrypt(CMS_ContentInfo *cms, EVP_PKEY *pk, X509 *cert,
                BIO *dcont, BIO *out, unsigned int flags)
{
    int r;
    BIO *cont;

    if (OBJ_obj2nid(CMS_get0_type(cms)) != NID_pkcs7_enveloped) {
        CMSerr(CMS_F_CMS_DECRYPT, CMS_R_TYPE_NOT_ENVELOPED_DATA);
        return 0;
    }
    if (!dcont && !check_content(cms))
        return 0;
    if (flags & CMS_DEBUG_DECRYPT)
        cms->d.envelopedData->encryptedContentInfo->debug = 1;
    else
        cms->d.envelopedData->encryptedContentInfo->debug = 0;
    if (!cert)
        cms->d.envelopedData->encryptedContentInfo->havenocert = 1;
    else
        cms->d.envelopedData->encryptedContentInfo->havenocert = 0;
    if (pk == ((void*)0) && cert == ((void*)0) && dcont == ((void*)0) && out == ((void*)0))
        return 1;
    if (pk != ((void*)0) && !CMS_decrypt_set1_pkey(cms, pk, cert))
        return 0;
    cont = CMS_dataInit(cms, dcont);
    if (cont == ((void*)0))
        return 0;
    r = cms_copy_content(out, cont, flags);
    do_free_upto(cont, dcont);
    return r;
}
