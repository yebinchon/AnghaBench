
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t ActionIndex; } ;
struct TYPE_9__ {TYPE_2__ AsyncExt; } ;
struct TYPE_11__ {TYPE_3__ FunctionParams; int (* pInitCallback ) (int ) ;TYPE_1__* ObjPool; } ;
struct TYPE_10__ {int Status; } ;
struct TYPE_7__ {int SyncObj; int pRespArgs; } ;
typedef TYPE_4__ InitComplete_t ;


 scalar_t__ _SL_RESP_ARGS_START (void*) ;
 int _SlDrvProtectionObjLockWaitForever () ;
 int _SlDrvProtectionObjUnLock () ;
 int _SlDrvReleasePoolObj (size_t) ;
 int _SlDrvSyncObjSignal (int *) ;
 int _sl_GetStartResponseConvert (int ) ;
 TYPE_6__* g_pCB ;
 int sl_Memcpy (int ,TYPE_4__*,int) ;
 int stub1 (int ) ;

void _sl_HandleAsync_InitComplete(void *pVoidBuf)
{
    InitComplete_t *pMsgArgs = (InitComplete_t *)_SL_RESP_ARGS_START(pVoidBuf);

    _SlDrvProtectionObjLockWaitForever();

    if(g_pCB->pInitCallback)
    {
        g_pCB->pInitCallback(_sl_GetStartResponseConvert(pMsgArgs->Status));
    }
    else
    {
        sl_Memcpy(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs, pMsgArgs, sizeof(InitComplete_t));
        _SlDrvSyncObjSignal(&g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].SyncObj);
    }

   _SlDrvProtectionObjUnLock();

    if(g_pCB->pInitCallback)
    {
        _SlDrvReleasePoolObj(g_pCB->FunctionParams.AsyncExt.ActionIndex);
    }

}
