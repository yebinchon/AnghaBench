
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cbData; } ;
struct TYPE_6__ {int Issuer; int SerialNumber; } ;
struct TYPE_5__ {TYPE_4__ Issuer; TYPE_4__ SerialNumber; } ;
typedef int * LPBYTE ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ CERT_ISSUER_SERIAL_NUMBER ;
typedef TYPE_2__ CERT_INFO ;
typedef int BYTE ;
typedef int BOOL ;


 int CRYPT_CopyBlob (int *,TYPE_4__*,int **) ;
 int ERROR_MORE_DATA ;
 int FALSE ;
 int SetLastError (int ) ;
 int TRACE (char*,void*,...) ;
 int TRUE ;

__attribute__((used)) static BOOL CRYPT_CopyRecipientInfo(void *pvData, DWORD *pcbData,
 const CERT_ISSUER_SERIAL_NUMBER *in)
{
    DWORD size = sizeof(CERT_INFO);
    BOOL ret;

    TRACE("(%p, %d, %p)\n", pvData, pvData ? *pcbData : 0, in);

    size += in->SerialNumber.cbData;
    size += in->Issuer.cbData;
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

        CRYPT_CopyBlob(&out->SerialNumber, &in->SerialNumber, &nextData);
        CRYPT_CopyBlob(&out->Issuer, &in->Issuer, &nextData);
        ret = TRUE;
    }
    TRACE("returning %d\n", ret);
    return ret;
}
