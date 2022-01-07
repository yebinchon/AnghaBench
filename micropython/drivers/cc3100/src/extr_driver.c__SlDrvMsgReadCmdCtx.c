
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int _SlSpawnEntryFunc_t ;
typedef int _SlReturnVal_t ;
struct TYPE_5__ {scalar_t__ RxMsgClass; int * pAsyncBuf; } ;
struct TYPE_6__ {TYPE_1__ AsyncExt; } ;
struct TYPE_7__ {scalar_t__ IsCmdRespWaited; int GlobalLockObj; int CmdSyncObj; TYPE_2__ FunctionParams; int RxDoneCnt; } ;


 scalar_t__ ASYNC_EVT_CLASS ;
 scalar_t__ CMD_RESP_CLASS ;
 scalar_t__ FALSE ;
 int SL_OS_RET_CODE_OK ;
 scalar_t__ TRUE ;
 int VERIFY_RET_OK (int ) ;
 scalar_t__ _SL_PENDING_RX_MSG (TYPE_3__*) ;
 int _SlAsyncEventGenericHandler () ;
 int _SlDrvMsgRead () ;
 scalar_t__ _SlDrvMsgReadSpawnCtx ;
 int _SlDrvObjUnLock (int *) ;
 int _SlDrvSyncObjWaitForever (int *) ;
 TYPE_3__* g_pCB ;
 int sl_Free (int *) ;
 int sl_Spawn (int ,int *,int ) ;
 int sl_SyncObjClear (int *) ;

_SlReturnVal_t _SlDrvMsgReadCmdCtx(void)
{







    while (TRUE == g_pCB->IsCmdRespWaited)
    {
        if(_SL_PENDING_RX_MSG(g_pCB))
        {
            VERIFY_RET_OK(_SlDrvMsgRead());
            g_pCB->RxDoneCnt++;

            if (CMD_RESP_CLASS == g_pCB->FunctionParams.AsyncExt.RxMsgClass)
            {
                g_pCB->IsCmdRespWaited = FALSE;



                sl_SyncObjClear(&g_pCB->CmdSyncObj);
            }
            else if (ASYNC_EVT_CLASS == g_pCB->FunctionParams.AsyncExt.RxMsgClass)
            {






                _SlAsyncEventGenericHandler();



                sl_Free(g_pCB->FunctionParams.AsyncExt.pAsyncBuf);



            }
        }
        else
        {

             _SlDrvSyncObjWaitForever(&g_pCB->CmdSyncObj);
        }
    }







    _SlDrvObjUnLock(&g_pCB->GlobalLockObj);

    if(_SL_PENDING_RX_MSG(g_pCB))
    {
        sl_Spawn((_SlSpawnEntryFunc_t)_SlDrvMsgReadSpawnCtx, ((void*)0), 0);
    }

    return SL_OS_RET_CODE_OK;
}
