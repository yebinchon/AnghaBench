
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCCERT_CONTEXT ;
typedef int HCERTSTORE ;
typedef int DWORD ;


 int CertEnumCertificatesInStore (int ,int ) ;

__attribute__((used)) static PCCERT_CONTEXT find_cert_any(HCERTSTORE store, DWORD dwType,
 DWORD dwFlags, const void *pvPara, PCCERT_CONTEXT prev)
{
    return CertEnumCertificatesInStore(store, prev);
}
