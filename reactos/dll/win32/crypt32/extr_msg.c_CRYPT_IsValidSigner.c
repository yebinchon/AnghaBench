
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_23__ {int cbData; } ;
struct TYPE_21__ {int cbData; } ;
struct TYPE_20__ {int cbData; } ;
struct TYPE_22__ {TYPE_5__ Issuer; TYPE_4__ SerialNumber; } ;
struct TYPE_24__ {TYPE_7__ KeyId; TYPE_6__ IssuerSerialNumber; } ;
struct TYPE_25__ {int dwIdChoice; TYPE_8__ u; } ;
struct TYPE_18__ {int cbData; } ;
struct TYPE_17__ {int cbData; } ;
struct TYPE_19__ {TYPE_2__ Issuer; TYPE_1__ SerialNumber; } ;
struct TYPE_15__ {int pszObjId; } ;
struct TYPE_14__ {scalar_t__ pszObjId; } ;
struct TYPE_16__ {int cbSize; TYPE_11__ HashAlgorithm; int hCryptProv; TYPE_10__ HashEncryptionAlgorithm; TYPE_9__ SignerId; TYPE_3__* pCertInfo; } ;
typedef TYPE_12__ CMSG_SIGNER_ENCODE_INFO_WITH_CMS ;
typedef int CMSG_SIGNER_ENCODE_INFO ;
typedef int BOOL ;




 int CRYPT_E_UNKNOWN_ALGO ;
 int CertOIDToAlgId (int ) ;
 int E_INVALIDARG ;
 int FALSE ;
 int FIXME (char*) ;
 int SetLastError (int ) ;
 int TRUE ;

__attribute__((used)) static BOOL CRYPT_IsValidSigner(const CMSG_SIGNER_ENCODE_INFO_WITH_CMS *signer)
{
    if (signer->cbSize != sizeof(CMSG_SIGNER_ENCODE_INFO) &&
     signer->cbSize != sizeof(CMSG_SIGNER_ENCODE_INFO_WITH_CMS))
    {
        SetLastError(E_INVALIDARG);
        return FALSE;
    }
    if (signer->cbSize == sizeof(CMSG_SIGNER_ENCODE_INFO))
    {
        if (!signer->pCertInfo->SerialNumber.cbData)
        {
            SetLastError(E_INVALIDARG);
            return FALSE;
        }
        if (!signer->pCertInfo->Issuer.cbData)
        {
            SetLastError(E_INVALIDARG);
            return FALSE;
        }
    }
    else if (signer->cbSize == sizeof(CMSG_SIGNER_ENCODE_INFO_WITH_CMS))
    {
        switch (signer->SignerId.dwIdChoice)
        {
        case 0:
            if (!signer->pCertInfo->SerialNumber.cbData)
            {
                SetLastError(E_INVALIDARG);
                return FALSE;
            }
            if (!signer->pCertInfo->Issuer.cbData)
            {
                SetLastError(E_INVALIDARG);
                return FALSE;
            }
            break;
        case 129:
            if (!signer->SignerId.u.IssuerSerialNumber.SerialNumber.cbData)
            {
                SetLastError(E_INVALIDARG);
                return FALSE;
            }
            if (!signer->SignerId.u.IssuerSerialNumber.Issuer.cbData)
            {
                SetLastError(E_INVALIDARG);
                return FALSE;
            }
            break;
        case 128:
            if (!signer->SignerId.u.KeyId.cbData)
            {
                SetLastError(E_INVALIDARG);
                return FALSE;
            }
            break;
        default:
            SetLastError(E_INVALIDARG);
        }
        if (signer->HashEncryptionAlgorithm.pszObjId)
        {
            FIXME("CMSG_SIGNER_ENCODE_INFO with CMS fields unsupported\n");
            return FALSE;
        }
    }
    if (!signer->hCryptProv)
    {
        SetLastError(E_INVALIDARG);
        return FALSE;
    }
    if (!CertOIDToAlgId(signer->HashAlgorithm.pszObjId))
    {
        SetLastError(CRYPT_E_UNKNOWN_ALGO);
        return FALSE;
    }
    return TRUE;
}
