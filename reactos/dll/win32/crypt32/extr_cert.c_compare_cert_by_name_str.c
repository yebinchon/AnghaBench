
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int dwCertEncodingType; TYPE_1__* pCertInfo; } ;
struct TYPE_4__ {int Issuer; int Subject; } ;
typedef int * PCERT_NAME_BLOB ;
typedef TYPE_2__* PCCERT_CONTEXT ;
typedef scalar_t__* LPWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int CERT_INFO_SUBJECT_FLAG ;
 int CERT_SIMPLE_NAME_STR ;
 int CertNameToStrW (int ,int *,int ,scalar_t__*,int) ;
 scalar_t__* CryptMemAlloc (int) ;
 int CryptMemFree (scalar_t__*) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ strstrW (scalar_t__*,void const*) ;
 scalar_t__ tolowerW (scalar_t__) ;

__attribute__((used)) static BOOL compare_cert_by_name_str(PCCERT_CONTEXT pCertContext,
 DWORD dwType, DWORD dwFlags, const void *pvPara)
{
    PCERT_NAME_BLOB name;
    DWORD len;
    BOOL ret = FALSE;

    if (dwType & CERT_INFO_SUBJECT_FLAG)
        name = &pCertContext->pCertInfo->Subject;
    else
        name = &pCertContext->pCertInfo->Issuer;
    len = CertNameToStrW(pCertContext->dwCertEncodingType, name,
     CERT_SIMPLE_NAME_STR, ((void*)0), 0);
    if (len)
    {
        LPWSTR str = CryptMemAlloc(len * sizeof(WCHAR));

        if (str)
        {
            LPWSTR ptr;

            CertNameToStrW(pCertContext->dwCertEncodingType, name,
             CERT_SIMPLE_NAME_STR, str, len);
            for (ptr = str; *ptr; ptr++)
                *ptr = tolowerW(*ptr);
            if (strstrW(str, pvPara))
                ret = TRUE;
            CryptMemFree(str);
        }
    }
    return ret;
}
