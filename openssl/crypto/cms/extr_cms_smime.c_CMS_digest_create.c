
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;
typedef int CMS_ContentInfo ;
typedef int BIO ;


 int CMS_ContentInfo_free (int *) ;
 unsigned int CMS_DETACHED ;
 unsigned int CMS_STREAM ;
 scalar_t__ CMS_final (int *,int *,int *,unsigned int) ;
 int CMS_set_detached (int *,int ) ;
 int * EVP_sha1 () ;
 int * cms_DigestedData_create (int const*) ;

CMS_ContentInfo *CMS_digest_create(BIO *in, const EVP_MD *md,
                                   unsigned int flags)
{
    CMS_ContentInfo *cms;
    if (!md)
        md = EVP_sha1();
    cms = cms_DigestedData_create(md);
    if (!cms)
        return ((void*)0);

    if (!(flags & CMS_DETACHED))
        CMS_set_detached(cms, 0);

    if ((flags & CMS_STREAM) || CMS_final(cms, in, ((void*)0), flags))
        return cms;

    CMS_ContentInfo_free(cms);
    return ((void*)0);
}
