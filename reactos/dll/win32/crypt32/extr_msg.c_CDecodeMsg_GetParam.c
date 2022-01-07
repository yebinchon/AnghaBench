
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int* pbData; int cbData; } ;
struct TYPE_9__ {int type; int properties; } ;
typedef TYPE_1__* HCRYPTMSG ;
typedef int DWORD ;
typedef TYPE_2__ CRYPT_DATA_BLOB ;
typedef TYPE_1__ CDecodeMsg ;
typedef int BOOL ;


 int CDecodeEnvelopedMsg_GetParam (TYPE_1__*,int ,int ,void*,int *) ;
 int CDecodeHashMsg_GetParam (TYPE_1__*,int ,int ,void*,int *) ;
 int CDecodeSignedMsg_GetParam (TYPE_1__*,int ,int ,void*,int *) ;




 int CRYPT_CopyParam (void*,int *,int*,int) ;
 int CRYPT_E_INVALID_MSG_TYPE ;
 int ContextPropertyList_FindProperty (int ,int ,TYPE_2__*) ;
 int FALSE ;
 int SetLastError (int ) ;

__attribute__((used)) static BOOL CDecodeMsg_GetParam(HCRYPTMSG hCryptMsg, DWORD dwParamType,
 DWORD dwIndex, void *pvData, DWORD *pcbData)
{
    CDecodeMsg *msg = hCryptMsg;
    BOOL ret = FALSE;

    switch (msg->type)
    {
    case 130:
        ret = CDecodeHashMsg_GetParam(msg, dwParamType, dwIndex, pvData,
         pcbData);
        break;
    case 131:
        ret = CDecodeEnvelopedMsg_GetParam(msg, dwParamType, dwIndex, pvData,
         pcbData);
        break;
    case 129:
        ret = CDecodeSignedMsg_GetParam(msg, dwParamType, dwIndex, pvData,
         pcbData);
        break;
    default:
        switch (dwParamType)
        {
        case 128:
            ret = CRYPT_CopyParam(pvData, pcbData, &msg->type,
             sizeof(msg->type));
            break;
        default:
        {
            CRYPT_DATA_BLOB blob;

            ret = ContextPropertyList_FindProperty(msg->properties, dwParamType,
             &blob);
            if (ret)
                ret = CRYPT_CopyParam(pvData, pcbData, blob.pbData,
                 blob.cbData);
            else
                SetLastError(CRYPT_E_INVALID_MSG_TYPE);
        }
        }
    }
    return ret;
}
