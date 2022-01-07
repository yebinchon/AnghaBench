
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int CMS_ContentInfo ;


 int CMS_add0_cert (int *,int *) ;
 int X509_up_ref (int *) ;

int CMS_add1_cert(CMS_ContentInfo *cms, X509 *cert)
{
    int r;
    r = CMS_add0_cert(cms, cert);
    if (r > 0)
        X509_up_ref(cert);
    return r;
}
