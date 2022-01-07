
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int* pbData; int cbData; } ;
struct TYPE_12__ {TYPE_2__* data; TYPE_1__ content; } ;
struct TYPE_13__ {TYPE_3__ enveloped_data; } ;
struct TYPE_17__ {int type; TYPE_4__ u; } ;
struct TYPE_14__ {int IssuerSerialNumber; } ;
struct TYPE_15__ {TYPE_5__ u; } ;
struct TYPE_16__ {TYPE_6__ RecipientId; } ;
struct TYPE_11__ {int cRecipientInfo; TYPE_7__* rgRecipientInfo; } ;
typedef TYPE_7__* PCMSG_KEY_TRANS_RECIPIENT_INFO ;
typedef int DWORD ;
typedef TYPE_8__ CDecodeMsg ;
typedef int BOOL ;






 int CRYPT_CopyParam (void*,int*,int*,int) ;
 int CRYPT_CopyRecipientInfo (void*,int*,int *) ;
 int CRYPT_E_INVALID_INDEX ;
 int CRYPT_E_INVALID_MSG_TYPE ;
 int FALSE ;
 int FIXME (char*,int) ;
 int SetLastError (int ) ;

__attribute__((used)) static BOOL CDecodeEnvelopedMsg_GetParam(CDecodeMsg *msg, DWORD dwParamType,
 DWORD dwIndex, void *pvData, DWORD *pcbData)
{
    BOOL ret = FALSE;

    switch (dwParamType)
    {
    case 128:
        ret = CRYPT_CopyParam(pvData, pcbData, &msg->type, sizeof(msg->type));
        break;
    case 131:
        if (msg->u.enveloped_data.data)
            ret = CRYPT_CopyParam(pvData, pcbData,
             msg->u.enveloped_data.content.pbData,
             msg->u.enveloped_data.content.cbData);
        else
            SetLastError(CRYPT_E_INVALID_MSG_TYPE);
        break;
    case 130:
        if (msg->u.enveloped_data.data)
            ret = CRYPT_CopyParam(pvData, pcbData,
             &msg->u.enveloped_data.data->cRecipientInfo, sizeof(DWORD));
        else
            SetLastError(CRYPT_E_INVALID_MSG_TYPE);
        break;
    case 129:
        if (msg->u.enveloped_data.data)
        {
            if (dwIndex < msg->u.enveloped_data.data->cRecipientInfo)
            {
                PCMSG_KEY_TRANS_RECIPIENT_INFO recipientInfo =
                 &msg->u.enveloped_data.data->rgRecipientInfo[dwIndex];

                ret = CRYPT_CopyRecipientInfo(pvData, pcbData,
                 &recipientInfo->RecipientId.u.IssuerSerialNumber);
            }
            else
                SetLastError(CRYPT_E_INVALID_INDEX);
        }
        else
            SetLastError(CRYPT_E_INVALID_MSG_TYPE);
        break;
    default:
        FIXME("unimplemented for %d\n", dwParamType);
        SetLastError(CRYPT_E_INVALID_MSG_TYPE);
    }
    return ret;
}
