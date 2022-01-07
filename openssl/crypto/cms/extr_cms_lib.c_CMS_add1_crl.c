
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_CRL ;
typedef int CMS_ContentInfo ;


 int CMS_add0_crl (int *,int *) ;
 int X509_CRL_up_ref (int *) ;

int CMS_add1_crl(CMS_ContentInfo *cms, X509_CRL *crl)
{
    int r;
    r = CMS_add0_crl(cms, crl);
    if (r > 0)
        X509_CRL_up_ref(crl);
    return r;
}
