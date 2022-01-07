
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int cbCtlEncoded; int pbCtlEncoded; } ;
struct TYPE_9__ {scalar_t__ properties; } ;
struct TYPE_11__ {TYPE_2__ ctx; TYPE_1__ base; } ;
typedef TYPE_3__ ctl_t ;
struct TYPE_12__ {scalar_t__ cbData; int pbData; } ;
typedef scalar_t__ DWORD ;
typedef TYPE_4__ CRYPT_DATA_BLOB ;
typedef int BOOL ;


 int CALG_MD5 ;
 int CALG_SHA1 ;


 int CRYPT_E_NOT_FOUND ;
 int CTLContext_GetHashProp (TYPE_3__*,scalar_t__,int ,int ,int ,void*,scalar_t__*) ;
 int ContextPropertyList_FindProperty (scalar_t__,scalar_t__,TYPE_4__*) ;
 int ERROR_MORE_DATA ;
 int FALSE ;
 int SetLastError (int ) ;
 int TRACE (char*,TYPE_3__*,...) ;
 int memcpy (void*,int ,scalar_t__) ;

__attribute__((used)) static BOOL CTLContext_GetProperty(ctl_t *ctl, DWORD dwPropId,
                                   void *pvData, DWORD *pcbData)
{
    BOOL ret;
    CRYPT_DATA_BLOB blob;

    TRACE("(%p, %d, %p, %p)\n", ctl, dwPropId, pvData, pcbData);

    if (ctl->base.properties)
        ret = ContextPropertyList_FindProperty(ctl->base.properties, dwPropId, &blob);
    else
        ret = FALSE;
    if (ret)
    {
        if (!pvData)
            *pcbData = blob.cbData;
        else if (*pcbData < blob.cbData)
        {
            SetLastError(ERROR_MORE_DATA);
            *pcbData = blob.cbData;
            ret = FALSE;
        }
        else
        {
            memcpy(pvData, blob.pbData, blob.cbData);
            *pcbData = blob.cbData;
        }
    }
    else
    {

        switch (dwPropId)
        {
        case 128:
            ret = CTLContext_GetHashProp(ctl, dwPropId, CALG_SHA1,
             ctl->ctx.pbCtlEncoded, ctl->ctx.cbCtlEncoded, pvData, pcbData);
            break;
        case 129:
            ret = CTLContext_GetHashProp(ctl, dwPropId, CALG_MD5,
             ctl->ctx.pbCtlEncoded, ctl->ctx.cbCtlEncoded, pvData, pcbData);
            break;
        default:
            SetLastError(CRYPT_E_NOT_FOUND);
        }
    }
    TRACE("returning %d\n", ret);
    return ret;
}
