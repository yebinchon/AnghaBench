
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_16__ ;
typedef struct TYPE_18__ TYPE_15__ ;


struct TYPE_23__ {size_t cbData; int pbData; } ;
struct TYPE_18__ {scalar_t__ cbData; } ;
struct TYPE_19__ {scalar_t__ cbData; } ;
struct TYPE_20__ {size_t cAltEntry; TYPE_7__* rgAltEntry; } ;
struct TYPE_28__ {TYPE_4__ KeyId; TYPE_15__ CertSerialNumber; TYPE_16__ CertIssuer; TYPE_15__ AuthorityCertSerialNumber; TYPE_1__ AuthorityCertIssuer; } ;
struct TYPE_27__ {TYPE_5__* pCertInfo; int dwCertEncodingType; } ;
struct TYPE_21__ {TYPE_16__ DirectoryName; } ;
struct TYPE_26__ {scalar_t__ dwAltNameChoice; TYPE_2__ u; } ;
struct TYPE_22__ {int cbData; int pbData; } ;
struct TYPE_25__ {TYPE_3__ Value; } ;
struct TYPE_24__ {int Issuer; TYPE_16__ Subject; int SerialNumber; int rgExtension; int cExtension; } ;
typedef TYPE_6__* PCERT_EXTENSION ;
typedef TYPE_7__* PCERT_ALT_NAME_ENTRY ;
typedef int * LPBYTE ;
typedef size_t DWORD ;
typedef TYPE_8__ CERT_CONTEXT ;
typedef TYPE_9__ CERT_AUTHORITY_KEY_ID_INFO ;
typedef TYPE_9__ CERT_AUTHORITY_KEY_ID2_INFO ;
typedef int BOOL ;


 scalar_t__ CERT_ALT_NAME_DIRECTORY_NAME ;
 int CERT_KEY_IDENTIFIER_PROP_ID ;
 size_t CERT_TRUST_HAS_KEY_MATCH_ISSUER ;
 size_t CERT_TRUST_HAS_NAME_MATCH_ISSUER ;
 size_t CERT_TRUST_IS_SELF_SIGNED ;
 int CRYPT_DECODE_ALLOC_FLAG ;
 int CRYPT_DECODE_NOCOPY_FLAG ;
 scalar_t__ CertCompareCertificateName (int ,TYPE_16__*,int *) ;
 scalar_t__ CertCompareIntegerBlob (TYPE_15__*,int *) ;
 TYPE_6__* CertFindExtension (int ,int ,int ) ;
 int CertGetCertificateContextProperty (TYPE_8__ const*,int ,int *,size_t*) ;
 int CryptDecodeObjectEx (int ,int ,int ,int ,int,int *,TYPE_9__**,size_t*) ;
 int * CryptMemAlloc (size_t) ;
 int CryptMemFree (int *) ;
 int FALSE ;
 int FIXME (char*) ;
 int LocalFree (TYPE_9__*) ;
 int X509_AUTHORITY_KEY_ID ;
 int X509_AUTHORITY_KEY_ID2 ;
 int memcmp (int *,int ,size_t) ;
 int szOID_AUTHORITY_KEY_IDENTIFIER ;
 int szOID_AUTHORITY_KEY_IDENTIFIER2 ;

DWORD CRYPT_IsCertificateSelfSigned(const CERT_CONTEXT *cert)
{
    DWORD size, status = 0;
    PCERT_EXTENSION ext;
    BOOL ret;

    if ((ext = CertFindExtension(szOID_AUTHORITY_KEY_IDENTIFIER2,
     cert->pCertInfo->cExtension, cert->pCertInfo->rgExtension)))
    {
        CERT_AUTHORITY_KEY_ID2_INFO *info;

        ret = CryptDecodeObjectEx(cert->dwCertEncodingType,
         X509_AUTHORITY_KEY_ID2, ext->Value.pbData, ext->Value.cbData,
         CRYPT_DECODE_ALLOC_FLAG | CRYPT_DECODE_NOCOPY_FLAG, ((void*)0),
         &info, &size);
        if (ret)
        {
            if (info->AuthorityCertIssuer.cAltEntry &&
             info->AuthorityCertSerialNumber.cbData)
            {
                PCERT_ALT_NAME_ENTRY directoryName = ((void*)0);
                DWORD i;

                for (i = 0; !directoryName &&
                 i < info->AuthorityCertIssuer.cAltEntry; i++)
                    if (info->AuthorityCertIssuer.rgAltEntry[i].dwAltNameChoice
                     == CERT_ALT_NAME_DIRECTORY_NAME)
                        directoryName =
                         &info->AuthorityCertIssuer.rgAltEntry[i];
                if (directoryName)
                {
                    if (CertCompareCertificateName(cert->dwCertEncodingType, &directoryName->u.DirectoryName, &cert->pCertInfo->Issuer)
                            && CertCompareIntegerBlob(&info->AuthorityCertSerialNumber, &cert->pCertInfo->SerialNumber))
                        status = CERT_TRUST_HAS_NAME_MATCH_ISSUER;
                }
                else
                {
                    FIXME("no supported name type in authority key id2\n");
                    ret = FALSE;
                }
            }
            else if (info->KeyId.cbData)
            {
                ret = CertGetCertificateContextProperty(cert,
                 CERT_KEY_IDENTIFIER_PROP_ID, ((void*)0), &size);
                if (ret && size == info->KeyId.cbData)
                {
                    LPBYTE buf = CryptMemAlloc(size);

                    if (buf)
                    {
                        CertGetCertificateContextProperty(cert, CERT_KEY_IDENTIFIER_PROP_ID, buf, &size);
                        if (!memcmp(buf, info->KeyId.pbData, size))
                            status = CERT_TRUST_HAS_KEY_MATCH_ISSUER;
                        CryptMemFree(buf);
                    }
                }
            }
            LocalFree(info);
        }
    }
    else if ((ext = CertFindExtension(szOID_AUTHORITY_KEY_IDENTIFIER,
     cert->pCertInfo->cExtension, cert->pCertInfo->rgExtension)))
    {
        CERT_AUTHORITY_KEY_ID_INFO *info;

        ret = CryptDecodeObjectEx(cert->dwCertEncodingType,
         X509_AUTHORITY_KEY_ID, ext->Value.pbData, ext->Value.cbData,
         CRYPT_DECODE_ALLOC_FLAG | CRYPT_DECODE_NOCOPY_FLAG, ((void*)0),
         &info, &size);
        if (ret)
        {
            if (info->CertIssuer.cbData && info->CertSerialNumber.cbData)
            {
                if (CertCompareCertificateName(cert->dwCertEncodingType, &info->CertIssuer, &cert->pCertInfo->Issuer)
                        && CertCompareIntegerBlob(&info->CertSerialNumber, &cert->pCertInfo->SerialNumber))
                    status = CERT_TRUST_HAS_NAME_MATCH_ISSUER;
            }
            else if (info->KeyId.cbData)
            {
                ret = CertGetCertificateContextProperty(cert,
                 CERT_KEY_IDENTIFIER_PROP_ID, ((void*)0), &size);
                if (ret && size == info->KeyId.cbData)
                {
                    LPBYTE buf = CryptMemAlloc(size);

                    if (buf)
                    {
                        CertGetCertificateContextProperty(cert,
                         CERT_KEY_IDENTIFIER_PROP_ID, buf, &size);
                        if (!memcmp(buf, info->KeyId.pbData, size))
                            status = CERT_TRUST_HAS_KEY_MATCH_ISSUER;
                        CryptMemFree(buf);
                    }
                }
            }
            LocalFree(info);
        }
    }
    else
        if (CertCompareCertificateName(cert->dwCertEncodingType, &cert->pCertInfo->Subject, &cert->pCertInfo->Issuer))
            status = CERT_TRUST_HAS_NAME_MATCH_ISSUER;

    if (status)
        status |= CERT_TRUST_IS_SELF_SIGNED;

    return status;
}
