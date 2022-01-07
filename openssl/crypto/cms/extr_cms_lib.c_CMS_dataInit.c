
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int contentType; } ;
typedef TYPE_1__ CMS_ContentInfo ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_push (int *,int *) ;
 int CMS_F_CMS_DATAINIT ;
 int CMS_R_NO_CONTENT ;
 int CMS_R_UNSUPPORTED_TYPE ;
 int CMSerr (int ,int ) ;






 int OBJ_obj2nid (int ) ;
 int * cms_CompressedData_init_bio (TYPE_1__*) ;
 int * cms_DigestedData_init_bio (TYPE_1__*) ;
 int * cms_EncryptedData_init_bio (TYPE_1__*) ;
 int * cms_EnvelopedData_init_bio (TYPE_1__*) ;
 int * cms_SignedData_init_bio (TYPE_1__*) ;
 int * cms_content_bio (TYPE_1__*) ;

BIO *CMS_dataInit(CMS_ContentInfo *cms, BIO *icont)
{
    BIO *cmsbio, *cont;
    if (icont)
        cont = icont;
    else
        cont = cms_content_bio(cms);
    if (!cont) {
        CMSerr(CMS_F_CMS_DATAINIT, CMS_R_NO_CONTENT);
        return ((void*)0);
    }
    switch (OBJ_obj2nid(cms->contentType)) {

    case 132:
        return cont;

    case 128:
        cmsbio = cms_SignedData_init_bio(cms);
        break;

    case 131:
        cmsbio = cms_DigestedData_init_bio(cms);
        break;






    case 130:
        cmsbio = cms_EncryptedData_init_bio(cms);
        break;

    case 129:
        cmsbio = cms_EnvelopedData_init_bio(cms);
        break;

    default:
        CMSerr(CMS_F_CMS_DATAINIT, CMS_R_UNSUPPORTED_TYPE);
        return ((void*)0);
    }

    if (cmsbio)
        return BIO_push(cmsbio, cont);

    if (!icont)
        BIO_free(cont);
    return ((void*)0);

}
