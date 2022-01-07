
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_ContentInfo ;
typedef int BIO ;


 int CMS_F_CMS_COMPRESS ;
 int CMS_R_UNSUPPORTED_COMPRESSION_ALGORITHM ;
 int CMSerr (int ,int ) ;

CMS_ContentInfo *CMS_compress(BIO *in, int comp_nid, unsigned int flags)
{
    CMSerr(CMS_F_CMS_COMPRESS, CMS_R_UNSUPPORTED_COMPRESSION_ALGORITHM);
    return ((void*)0);
}
