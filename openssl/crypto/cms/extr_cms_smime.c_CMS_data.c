
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_ContentInfo ;
typedef int BIO ;


 int BIO_free_all (int *) ;
 int CMS_F_CMS_DATA ;
 int CMS_R_TYPE_NOT_DATA ;
 int * CMS_dataInit (int *,int *) ;
 int CMS_get0_type (int *) ;
 int CMSerr (int ,int ) ;
 scalar_t__ NID_pkcs7_data ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int cms_copy_content (int *,int *,unsigned int) ;

int CMS_data(CMS_ContentInfo *cms, BIO *out, unsigned int flags)
{
    BIO *cont;
    int r;
    if (OBJ_obj2nid(CMS_get0_type(cms)) != NID_pkcs7_data) {
        CMSerr(CMS_F_CMS_DATA, CMS_R_TYPE_NOT_DATA);
        return 0;
    }
    cont = CMS_dataInit(cms, ((void*)0));
    if (!cont)
        return 0;
    r = cms_copy_content(out, cont, flags);
    BIO_free_all(cont);
    return r;
}
