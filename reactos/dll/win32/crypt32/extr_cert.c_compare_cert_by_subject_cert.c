
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int Issuer; int SerialNumber; } ;
struct TYPE_6__ {TYPE_1__* pCertInfo; int dwCertEncodingType; } ;
struct TYPE_5__ {int Issuer; int SerialNumber; int Subject; } ;
typedef TYPE_2__* PCCERT_CONTEXT ;
typedef int DWORD ;
typedef TYPE_3__ CERT_INFO ;
typedef scalar_t__ BOOL ;


 scalar_t__ CertCompareCertificateName (int ,int *,int *) ;
 scalar_t__ CertCompareIntegerBlob (int *,int *) ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static BOOL compare_cert_by_subject_cert(PCCERT_CONTEXT pCertContext,
 DWORD dwType, DWORD dwFlags, const void *pvPara)
{
    CERT_INFO *pCertInfo = (CERT_INFO *)pvPara;
    BOOL ret;


    ret = CertCompareCertificateName(pCertContext->dwCertEncodingType,
     &pCertContext->pCertInfo->Subject, &pCertInfo->Issuer);
    if (ret)
        ret = CertCompareIntegerBlob(&pCertContext->pCertInfo->SerialNumber,
         &pCertInfo->SerialNumber);
    else
    {

        ret = CertCompareIntegerBlob(&pCertContext->pCertInfo->SerialNumber,
         &pCertInfo->SerialNumber);
        if (ret)
            ret = CertCompareCertificateName(pCertContext->dwCertEncodingType,
             &pCertContext->pCertInfo->Issuer, &pCertInfo->Issuer);
    }
    TRACE("returning %d\n", ret);
    return ret;
}
