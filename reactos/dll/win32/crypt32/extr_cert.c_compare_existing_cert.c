
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pCertInfo; int dwCertEncodingType; } ;
typedef TYPE_1__* PCCERT_CONTEXT ;
typedef int DWORD ;
typedef int BOOL ;


 int CertCompareCertificate (int ,int ,int ) ;

__attribute__((used)) static BOOL compare_existing_cert(PCCERT_CONTEXT pCertContext, DWORD dwType,
 DWORD dwFlags, const void *pvPara)
{
    PCCERT_CONTEXT toCompare = pvPara;
    return CertCompareCertificate(pCertContext->dwCertEncodingType,
     pCertContext->pCertInfo, toCompare->pCertInfo);
}
