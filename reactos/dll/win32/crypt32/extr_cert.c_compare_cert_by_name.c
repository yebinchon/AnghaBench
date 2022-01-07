
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dwCertEncodingType; TYPE_1__* pCertInfo; } ;
struct TYPE_4__ {int Issuer; int Subject; } ;
typedef TYPE_2__* PCCERT_CONTEXT ;
typedef int DWORD ;
typedef int CERT_NAME_BLOB ;
typedef int BOOL ;


 int CERT_INFO_SUBJECT_FLAG ;
 int CertCompareCertificateName (int ,int *,int *) ;

__attribute__((used)) static BOOL compare_cert_by_name(PCCERT_CONTEXT pCertContext, DWORD dwType,
 DWORD dwFlags, const void *pvPara)
{
    CERT_NAME_BLOB *blob = (CERT_NAME_BLOB *)pvPara, *toCompare;
    BOOL ret;

    if (dwType & CERT_INFO_SUBJECT_FLAG)
        toCompare = &pCertContext->pCertInfo->Subject;
    else
        toCompare = &pCertContext->pCertInfo->Issuer;
    ret = CertCompareCertificateName(pCertContext->dwCertEncodingType,
     toCompare, blob);
    return ret;
}
