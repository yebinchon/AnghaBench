
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RD_BOOL ;
typedef int PCCERT_CONTEXT ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ CERT_STORE_SIGNATURE_FLAG ;
 int CertVerifySubjectCertificateContext (int ,int ,scalar_t__*) ;
 scalar_t__ GetLastError () ;
 int error (char*,scalar_t__) ;

RD_BOOL rdssl_certs_ok(PCCERT_CONTEXT server_cert, PCCERT_CONTEXT cacert)
{

    DWORD dwFlags = CERT_STORE_SIGNATURE_FLAG;
    BOOL ret = CertVerifySubjectCertificateContext(server_cert,
                                                   cacert,
                                                   &dwFlags);
    if (!ret)
    {
        error("CertVerifySubjectCertificateContext call failed with %lx\n", GetLastError());
    }
    if (dwFlags)
    {
        error("CertVerifySubjectCertificateContext check failed %lx\n", dwFlags);
    }
    return (dwFlags == 0);
}
