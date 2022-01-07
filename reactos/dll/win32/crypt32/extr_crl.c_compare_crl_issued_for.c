
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* pIssuerCert; } ;
struct TYPE_10__ {TYPE_3__* pCrlInfo; } ;
struct TYPE_9__ {int Issuer; } ;
struct TYPE_8__ {TYPE_1__* pCertInfo; int dwCertEncodingType; } ;
struct TYPE_7__ {int Issuer; } ;
typedef TYPE_4__* PCCRL_CONTEXT ;
typedef int DWORD ;
typedef TYPE_5__ CRL_FIND_ISSUED_FOR_PARA ;
typedef int BOOL ;


 int CertCompareCertificateName (int ,int *,int *) ;

__attribute__((used)) static BOOL compare_crl_issued_for(PCCRL_CONTEXT pCrlContext, DWORD dwType,
 DWORD dwFlags, const void *pvPara)
{
    const CRL_FIND_ISSUED_FOR_PARA *para = pvPara;
    BOOL ret;

    ret = CertCompareCertificateName(para->pIssuerCert->dwCertEncodingType,
     &para->pIssuerCert->pCertInfo->Issuer, &pCrlContext->pCrlInfo->Issuer);
    return ret;
}
