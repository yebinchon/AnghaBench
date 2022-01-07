
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_ContentInfo ;
typedef int BIO ;


 int CMS_ContentInfo_free (int *) ;
 unsigned int CMS_STREAM ;
 scalar_t__ CMS_final (int *,int *,int *,unsigned int) ;
 int * cms_Data_create () ;

CMS_ContentInfo *CMS_data_create(BIO *in, unsigned int flags)
{
    CMS_ContentInfo *cms;
    cms = cms_Data_create();
    if (!cms)
        return ((void*)0);

    if ((flags & CMS_STREAM) || CMS_final(cms, in, ((void*)0), flags))
        return cms;

    CMS_ContentInfo_free(cms);

    return ((void*)0);
}
