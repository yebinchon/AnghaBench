
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int pbData; int cbData; } ;
struct TYPE_11__ {int SerialNumber; int Issuer; } ;
struct TYPE_13__ {TYPE_3__ KeyId; int HashId; TYPE_2__ IssuerSerialNumber; } ;
struct TYPE_15__ {int dwIdChoice; TYPE_4__ u; } ;
struct TYPE_14__ {TYPE_1__* pCertInfo; int dwCertEncodingType; } ;
struct TYPE_10__ {int SerialNumber; int Issuer; } ;
typedef TYPE_5__* PCCERT_CONTEXT ;
typedef int * LPBYTE ;
typedef int DWORD ;
typedef TYPE_6__ CERT_ID ;
typedef int BOOL ;





 int CERT_KEY_IDENTIFIER_PROP_ID ;
 int CertCompareCertificateName (int ,int *,int *) ;
 int CertCompareIntegerBlob (int *,int *) ;
 int CertGetCertificateContextProperty (TYPE_5__*,int ,int *,int *) ;
 int * CryptMemAlloc (int ) ;
 int CryptMemFree (int *) ;
 int FALSE ;
 int compare_cert_by_sha1_hash (TYPE_5__*,int ,int ,int *) ;
 int memcmp (int *,int ,int ) ;

__attribute__((used)) static BOOL compare_cert_by_cert_id(PCCERT_CONTEXT pCertContext, DWORD dwType,
 DWORD dwFlags, const void *pvPara)
{
    CERT_ID *id = (CERT_ID *)pvPara;
    BOOL ret;

    switch (id->dwIdChoice)
    {
    case 130:
        ret = CertCompareCertificateName(pCertContext->dwCertEncodingType,
         &pCertContext->pCertInfo->Issuer, &id->u.IssuerSerialNumber.Issuer);
        if (ret)
            ret = CertCompareIntegerBlob(&pCertContext->pCertInfo->SerialNumber,
             &id->u.IssuerSerialNumber.SerialNumber);
        break;
    case 128:
        ret = compare_cert_by_sha1_hash(pCertContext, dwType, dwFlags,
         &id->u.HashId);
        break;
    case 129:
    {
        DWORD size = 0;

        ret = CertGetCertificateContextProperty(pCertContext,
         CERT_KEY_IDENTIFIER_PROP_ID, ((void*)0), &size);
        if (ret && size == id->u.KeyId.cbData)
        {
            LPBYTE buf = CryptMemAlloc(size);

            if (buf)
            {
                CertGetCertificateContextProperty(pCertContext,
                 CERT_KEY_IDENTIFIER_PROP_ID, buf, &size);
                ret = !memcmp(buf, id->u.KeyId.pbData, size);
                CryptMemFree(buf);
            }
            else
                ret = FALSE;
        }
        else
            ret = FALSE;
        break;
    }
    default:
        ret = FALSE;
        break;
    }
    return ret;
}
