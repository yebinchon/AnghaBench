
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hash; } ;
struct TYPE_8__ {int properties; TYPE_1__ u; int type; } ;
struct TYPE_7__ {int cbData; int * pbData; } ;
typedef int DWORD ;
typedef TYPE_2__ CRYPT_DATA_BLOB ;
typedef TYPE_3__ CDecodeMsg ;
typedef int BOOL ;





 int CRYPT_CopyParam (void*,int*,int *,int) ;
 int CRYPT_E_INVALID_MSG_TYPE ;
 int CRYPT_FixUpAlgorithmID (void*) ;
 int ContextPropertyList_FindProperty (int ,int,TYPE_2__*) ;
 int CryptGetHashParam (int ,int ,void*,int*,int ) ;
 int FALSE ;
 int HP_HASHVAL ;
 int SetLastError (int ) ;

__attribute__((used)) static BOOL CDecodeHashMsg_GetParam(CDecodeMsg *msg, DWORD dwParamType,
 DWORD dwIndex, void *pvData, DWORD *pcbData)
{
    BOOL ret = FALSE;

    switch (dwParamType)
    {
    case 128:
        ret = CRYPT_CopyParam(pvData, pcbData, &msg->type, sizeof(msg->type));
        break;
    case 129:
    {
        CRYPT_DATA_BLOB blob;

        ret = ContextPropertyList_FindProperty(msg->properties, dwParamType,
         &blob);
        if (ret)
        {
            ret = CRYPT_CopyParam(pvData, pcbData, blob.pbData, blob.cbData);
            if (ret && pvData)
                CRYPT_FixUpAlgorithmID(pvData);
        }
        else
            SetLastError(CRYPT_E_INVALID_MSG_TYPE);
        break;
    }
    case 130:
        ret = CryptGetHashParam(msg->u.hash, HP_HASHVAL, pvData, pcbData, 0);
        break;
    default:
    {
        CRYPT_DATA_BLOB blob;

        ret = ContextPropertyList_FindProperty(msg->properties, dwParamType,
         &blob);
        if (ret)
            ret = CRYPT_CopyParam(pvData, pcbData, blob.pbData, blob.cbData);
        else
            SetLastError(CRYPT_E_INVALID_MSG_TYPE);
    }
    }
    return ret;
}
