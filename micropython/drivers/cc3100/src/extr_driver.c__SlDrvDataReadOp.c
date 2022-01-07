
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t _u8 ;
typedef int _SlSd_t ;
typedef scalar_t__ _SlReturnVal_t ;
struct TYPE_10__ {scalar_t__ RxPayloadLen; int * pRxPayload; } ;
typedef TYPE_3__ _SlCmdExt_t ;
typedef int _SlCmdCtrl_t ;
struct TYPE_11__ {size_t* pArgs; int * pData; } ;
typedef TYPE_4__ _SlArgsData_t ;
struct TYPE_8__ {scalar_t__ TxPoolCnt; int TxLockObj; int TxSyncObj; } ;
struct TYPE_12__ {TYPE_2__* ObjPool; int GlobalLockObj; TYPE_1__ FlowContCB; } ;
struct TYPE_9__ {size_t* pRespArgs; int SyncObj; } ;


 int BSD_SOCKET_ID_MASK ;
 scalar_t__ FLOW_CONT_MIN ;
 size_t MAX_CONCURRENT_ACTIONS ;
 int RECV_ID ;
 scalar_t__ SL_EBADF ;
 int SL_MAX_SOCKETS ;
 scalar_t__ SL_OS_RET_CODE_OK ;
 scalar_t__ SL_POOL_IS_EMPTY ;
 int VERIFY_PROTOCOL (int) ;
 scalar_t__ _SlDrvMsgWrite (int *,TYPE_3__*,size_t*) ;
 int _SlDrvObjLockWaitForever (int *) ;
 int _SlDrvObjUnLock (int *) ;
 int _SlDrvProtectionObjLockWaitForever () ;
 int _SlDrvProtectionObjUnLock () ;
 int _SlDrvReleasePoolObj (size_t) ;
 int _SlDrvSyncObjWaitForever (int *) ;
 scalar_t__ _SlDrvWaitForPoolObj (int ,int) ;
 TYPE_5__* g_pCB ;
 int sl_SyncObjClear (int *) ;

_SlReturnVal_t _SlDrvDataReadOp(
    _SlSd_t Sd,
    _SlCmdCtrl_t *pCmdCtrl ,
    void *pTxRxDescBuff ,
    _SlCmdExt_t *pCmdExt)
{
    _SlReturnVal_t RetVal;
    _u8 ObjIdx = MAX_CONCURRENT_ACTIONS;
    _SlArgsData_t pArgsData;


    VERIFY_PROTOCOL(((void*)0) != pCmdExt->pRxPayload);



    VERIFY_PROTOCOL(0 != pCmdExt->RxPayloadLen);


    if((Sd & BSD_SOCKET_ID_MASK) >= SL_MAX_SOCKETS)
    {
        return SL_EBADF;
    }


    ObjIdx = (_u8)_SlDrvWaitForPoolObj(RECV_ID, Sd & BSD_SOCKET_ID_MASK);

    if (MAX_CONCURRENT_ACTIONS == ObjIdx)
    {
        return SL_POOL_IS_EMPTY;
    }

    _SlDrvProtectionObjLockWaitForever();

    pArgsData.pData = pCmdExt->pRxPayload;
    pArgsData.pArgs = (_u8 *)pTxRxDescBuff;
    g_pCB->ObjPool[ObjIdx].pRespArgs = (_u8 *)&pArgsData;

    _SlDrvProtectionObjUnLock();



    _SlDrvObjLockWaitForever(&g_pCB->FlowContCB.TxLockObj);





    sl_SyncObjClear(&g_pCB->FlowContCB.TxSyncObj);

    if(g_pCB->FlowContCB.TxPoolCnt <= FLOW_CONT_MIN)
    {



        _SlDrvSyncObjWaitForever(&g_pCB->FlowContCB.TxSyncObj);

    }

    _SlDrvObjLockWaitForever(&g_pCB->GlobalLockObj);


    VERIFY_PROTOCOL(g_pCB->FlowContCB.TxPoolCnt > FLOW_CONT_MIN);
    g_pCB->FlowContCB.TxPoolCnt--;

    _SlDrvObjUnLock(&g_pCB->FlowContCB.TxLockObj);


    RetVal = _SlDrvMsgWrite(pCmdCtrl, pCmdExt, (_u8 *)pTxRxDescBuff);

    _SlDrvObjUnLock(&g_pCB->GlobalLockObj);


    if(SL_OS_RET_CODE_OK == RetVal)
    {

        _SlDrvSyncObjWaitForever(&g_pCB->ObjPool[ObjIdx].SyncObj);
    }

    _SlDrvReleasePoolObj(ObjIdx);
    return RetVal;
}
