
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pCertInfo; int dwCertEncodingType; } ;
struct TYPE_4__ {int SubjectPublicKeyInfo; } ;
typedef TYPE_2__* PCCERT_CONTEXT ;
typedef int DWORD ;
typedef int CERT_PUBLIC_KEY_INFO ;
typedef int BOOL ;


 int CertComparePublicKeyInfo (int ,int *,int *) ;

__attribute__((used)) static BOOL compare_cert_by_public_key(PCCERT_CONTEXT pCertContext,
 DWORD dwType, DWORD dwFlags, const void *pvPara)
{
    CERT_PUBLIC_KEY_INFO *publicKey = (CERT_PUBLIC_KEY_INFO *)pvPara;
    BOOL ret;

    ret = CertComparePublicKeyInfo(pCertContext->dwCertEncodingType,
     &pCertContext->pCertInfo->SubjectPublicKeyInfo, publicKey);
    return ret;
}
