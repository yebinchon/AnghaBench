
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef char* uint32 ;
typedef int * PCCERT_CONTEXT ;


 int * CertCreateCertificateContext (int,int *,char*) ;
 int GetLastError () ;
 int PKCS_7_ASN_ENCODING ;
 int X509_ASN_ENCODING ;
 int error (char*,int ,...) ;

PCCERT_CONTEXT rdssl_cert_read(uint8 * data, uint32 len)
{
    PCCERT_CONTEXT res;
    if (!data || !len)
    {
        error("rdssl_cert_read %p %ld\n", data, len);
        return ((void*)0);
    }
    res = CertCreateCertificateContext(X509_ASN_ENCODING | PKCS_7_ASN_ENCODING, data, len);
    if (!res)
    {
        error("CertCreateCertificateContext call failed with %lx\n", GetLastError());
    }
    return res;
}
