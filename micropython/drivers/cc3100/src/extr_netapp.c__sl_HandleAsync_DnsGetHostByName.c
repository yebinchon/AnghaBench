
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int _GetHostByNameIPv6AsyncResponse_t ;
typedef int _GetHostByNameIPv4AsyncResponse_t ;
struct TYPE_6__ {size_t ActionIndex; } ;
struct TYPE_7__ {TYPE_2__ AsyncExt; } ;
struct TYPE_8__ {TYPE_3__ FunctionParams; TYPE_1__* ObjPool; } ;
struct TYPE_5__ {int AdditionalData; int SyncObj; int * pRespArgs; } ;


 int SL_NETAPP_FAMILY_MASK ;
 int VERIFY_SOCKET_CB (int) ;
 scalar_t__ _SL_RESP_ARGS_START (void*) ;
 int _SlDrvProtectionObjLockWaitForever () ;
 int _SlDrvProtectionObjUnLock () ;
 int _SlDrvSyncObjSignal (int *) ;
 TYPE_4__* g_pCB ;
 int sl_Memcpy (int *,int *,int) ;

void _sl_HandleAsync_DnsGetHostByName(void *pVoidBuf)
{
    _GetHostByNameIPv4AsyncResponse_t *pMsgArgs = (_GetHostByNameIPv4AsyncResponse_t *)_SL_RESP_ARGS_START(pVoidBuf);

   _SlDrvProtectionObjLockWaitForever();

    VERIFY_SOCKET_CB(((void*)0) != g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs);


 if(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].AdditionalData & SL_NETAPP_FAMILY_MASK)
 {
  sl_Memcpy(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs, pMsgArgs, sizeof(_GetHostByNameIPv6AsyncResponse_t));
 }

 else
 {
  sl_Memcpy(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs, pMsgArgs, sizeof(_GetHostByNameIPv4AsyncResponse_t));
 }
 _SlDrvSyncObjSignal(&g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].SyncObj);
    _SlDrvProtectionObjUnLock();
    return;
}
