
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ cbData; } ;
struct TYPE_13__ {int SerialNumber; int Issuer; } ;
struct TYPE_9__ {TYPE_8__ SerialNumber; TYPE_8__ Issuer; } ;
struct TYPE_10__ {int KeyId; TYPE_1__ IssuerSerialNumber; } ;
struct TYPE_11__ {scalar_t__ dwIdChoice; TYPE_2__ u; } ;
struct TYPE_12__ {TYPE_3__ SignerId; } ;
typedef int * LPBYTE ;
typedef scalar_t__ DWORD ;
typedef TYPE_4__ CMSG_CMS_SIGNER_INFO ;
typedef TYPE_5__ CERT_INFO ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ CERT_ID_ISSUER_SERIAL_NUMBER ;
 int CRYPT_CopyBlob (int *,TYPE_8__*,int **) ;
 int CRYPT_CopyKeyIdAsIssuerAndSerial (int *,int *,int *,scalar_t__,int **) ;
 scalar_t__ CRYPT_SizeOfKeyIdAsIssuerAndSerial (int *) ;
 int ERROR_MORE_DATA ;
 int FALSE ;
 int SetLastError (int ) ;
 int TRACE (char*,void*,...) ;
 int TRUE ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static BOOL CRYPT_CopySignerCertInfo(void *pvData, DWORD *pcbData,
 const CMSG_CMS_SIGNER_INFO *in)
{
    DWORD size = sizeof(CERT_INFO), rdnSize = 0;
    BOOL ret;

    TRACE("(%p, %d, %p)\n", pvData, pvData ? *pcbData : 0, in);

    if (in->SignerId.dwIdChoice == CERT_ID_ISSUER_SERIAL_NUMBER)
    {
        size += in->SignerId.u.IssuerSerialNumber.Issuer.cbData;
        size += in->SignerId.u.IssuerSerialNumber.SerialNumber.cbData;
    }
    else
    {
        rdnSize = CRYPT_SizeOfKeyIdAsIssuerAndSerial(&in->SignerId.u.KeyId);
        size += rdnSize;
    }
    if (!pvData)
    {
        *pcbData = size;
        ret = TRUE;
    }
    else if (*pcbData < size)
    {
        *pcbData = size;
        SetLastError(ERROR_MORE_DATA);
        ret = FALSE;
    }
    else
    {
        LPBYTE nextData = (BYTE *)pvData + sizeof(CERT_INFO);
        CERT_INFO *out = pvData;

        memset(out, 0, sizeof(CERT_INFO));
        if (in->SignerId.dwIdChoice == CERT_ID_ISSUER_SERIAL_NUMBER)
        {
            CRYPT_CopyBlob(&out->Issuer,
             &in->SignerId.u.IssuerSerialNumber.Issuer, &nextData);
            CRYPT_CopyBlob(&out->SerialNumber,
             &in->SignerId.u.IssuerSerialNumber.SerialNumber, &nextData);
            ret = TRUE;
        }
        else
            ret = CRYPT_CopyKeyIdAsIssuerAndSerial(&out->Issuer, &out->SerialNumber,
             &in->SignerId.u.KeyId, rdnSize, &nextData);
    }
    TRACE("returning %d\n", ret);
    return ret;
}
