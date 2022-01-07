
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PCCERT_CONTEXT ;


 int CertFreeCertificateContext (scalar_t__) ;

void rdssl_cert_free(PCCERT_CONTEXT context)
{
    if (context)
        CertFreeCertificateContext(context);
}
