
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int _PingReportResponse_t ;
struct TYPE_10__ {size_t ActionIndex; } ;
struct TYPE_11__ {TYPE_4__ AsyncExt; } ;
struct TYPE_7__ {int * pAsyncRsp; } ;
struct TYPE_8__ {TYPE_1__ PingAsync; } ;
struct TYPE_12__ {TYPE_5__ FunctionParams; TYPE_3__* ObjPool; TYPE_2__ PingCB; } ;
struct TYPE_9__ {int SyncObj; int * pRespArgs; } ;
typedef int SlPingReport_t ;


 int CopyPingResultsToReport (int *,int *) ;
 int VERIFY_SOCKET_CB (int) ;
 scalar_t__ _SL_RESP_ARGS_START (void*) ;
 int _SlDrvProtectionObjLockWaitForever () ;
 int _SlDrvProtectionObjUnLock () ;
 int _SlDrvSyncObjSignal (int *) ;
 TYPE_6__* g_pCB ;
 int pPingCallBackFunc (int *) ;
 int sl_Memcpy (int *,int *,int) ;

void _sl_HandleAsync_PingResponse(void *pVoidBuf)
{
    _PingReportResponse_t *pMsgArgs = (_PingReportResponse_t *)_SL_RESP_ARGS_START(pVoidBuf);
    SlPingReport_t pingReport;

    if(pPingCallBackFunc)
    {
        CopyPingResultsToReport(pMsgArgs,&pingReport);
        pPingCallBackFunc(&pingReport);
    }
    else
    {

        _SlDrvProtectionObjLockWaitForever();

        VERIFY_SOCKET_CB(((void*)0) != g_pCB->PingCB.PingAsync.pAsyncRsp);

  if (((void*)0) != g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs)
  {
     sl_Memcpy(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs, pMsgArgs, sizeof(_PingReportResponse_t));
     _SlDrvSyncObjSignal(&g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].SyncObj);
  }
       _SlDrvProtectionObjUnLock();
    }
    return;
}
