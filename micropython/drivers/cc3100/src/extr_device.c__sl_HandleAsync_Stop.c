
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int _BasicResponse_t ;
struct TYPE_8__ {size_t ActionIndex; } ;
struct TYPE_9__ {TYPE_3__ AsyncExt; } ;
struct TYPE_6__ {int * pAsyncRsp; } ;
struct TYPE_10__ {TYPE_4__ FunctionParams; TYPE_2__* ObjPool; TYPE_1__ StopCB; } ;
struct TYPE_7__ {int SyncObj; int pRespArgs; } ;


 int VERIFY_SOCKET_CB (int) ;
 scalar_t__ _SL_RESP_ARGS_START (void*) ;
 int _SlDrvProtectionObjLockWaitForever () ;
 int _SlDrvProtectionObjUnLock () ;
 int _SlDrvSyncObjSignal (int *) ;
 TYPE_5__* g_pCB ;
 int sl_Memcpy (int ,int *,int) ;

void _sl_HandleAsync_Stop(void *pVoidBuf)
{
    _BasicResponse_t *pMsgArgs = (_BasicResponse_t *)_SL_RESP_ARGS_START(pVoidBuf);

    VERIFY_SOCKET_CB(((void*)0) != g_pCB->StopCB.pAsyncRsp);

    _SlDrvProtectionObjLockWaitForever();

    sl_Memcpy(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs, pMsgArgs, sizeof(_BasicResponse_t));

    _SlDrvSyncObjSignal(&g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].SyncObj);
    _SlDrvProtectionObjUnLock();

    return;
}
