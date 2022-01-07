
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwErrorStatus; } ;
struct TYPE_5__ {TYPE_1__ TrustStatus; int pCertContext; } ;
typedef TYPE_2__* PCERT_CHAIN_ELEMENT ;
typedef int PCCERT_CONTEXT ;
typedef int HCERTSTORE ;


 int CERT_TRUST_IS_UNTRUSTED_ROOT ;
 int CRYPT_FindCertInStore (int ,int ) ;
 int CertFreeCertificateContext (int ) ;

__attribute__((used)) static void CRYPT_CheckTrustedStatus(HCERTSTORE hRoot,
 PCERT_CHAIN_ELEMENT rootElement)
{
    PCCERT_CONTEXT trustedRoot = CRYPT_FindCertInStore(hRoot,
     rootElement->pCertContext);

    if (!trustedRoot)
        rootElement->TrustStatus.dwErrorStatus |=
         CERT_TRUST_IS_UNTRUSTED_ROOT;
    else
        CertFreeCertificateContext(trustedRoot);
}
