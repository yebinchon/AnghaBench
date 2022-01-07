
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ _i16 ;
typedef int _SlReturnVal_t ;
struct TYPE_5__ {int RxMsgClass; int * pAsyncBuf; } ;
struct TYPE_6__ {TYPE_1__ AsyncExt; } ;
struct TYPE_7__ {scalar_t__ IsCmdRespWaited; int GlobalLockObj; TYPE_2__ FunctionParams; int RxDoneCnt; int CmdSyncObj; } ;





 scalar_t__ FALSE ;
 scalar_t__ OSI_OK ;

 int SL_RET_CODE_OK ;
 scalar_t__ TRUE ;
 int VERIFY_PROTOCOL (int) ;
 int VERIFY_RET_OK (int ) ;
 scalar_t__ _SL_PENDING_RX_MSG (TYPE_3__*) ;
 int _SlAsyncEventGenericHandler () ;
 int _SlDrvMsgRead () ;
 int _SlDrvObjLockWaitForever (int *) ;
 int _SlDrvObjUnLock (int *) ;
 int _SlDrvSyncObjSignal (int *) ;
 TYPE_3__* g_pCB ;
 int sl_Free (int *) ;
 scalar_t__ sl_LockObjLock (int *,int ) ;

_SlReturnVal_t _SlDrvMsgReadSpawnCtx(void *pValue)
{
    _SlDrvObjLockWaitForever(&g_pCB->GlobalLockObj);





    if(FALSE == (_SL_PENDING_RX_MSG(g_pCB)))
    {
        _SlDrvObjUnLock(&g_pCB->GlobalLockObj);

        return SL_RET_CODE_OK;
    }

    VERIFY_RET_OK(_SlDrvMsgRead());

    g_pCB->RxDoneCnt++;

    switch(g_pCB->FunctionParams.AsyncExt.RxMsgClass)
    {
    case 131:


        VERIFY_PROTOCOL(((void*)0) != g_pCB->FunctionParams.AsyncExt.pAsyncBuf);

        _SlAsyncEventGenericHandler();


        sl_Free(g_pCB->FunctionParams.AsyncExt.pAsyncBuf);



        break;
    case 129:
    case 128:

        break;
    case 130:


    default:
        VERIFY_PROTOCOL(0);
    }

    _SlDrvObjUnLock(&g_pCB->GlobalLockObj);

    return(SL_RET_CODE_OK);
}
