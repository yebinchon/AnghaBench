
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int _SlSd_t ;
typedef int _SlReturnVal_t ;
typedef int _SlCmdExt_t ;
typedef int _SlCmdCtrl_t ;
struct TYPE_3__ {scalar_t__ TxPoolCnt; int TxLockObj; int TxSyncObj; } ;
struct TYPE_4__ {int SocketTXFailure; int SocketNonBlocking; int GlobalLockObj; TYPE_1__ FlowContCB; } ;


 int BSD_SOCKET_ID_MASK ;
 scalar_t__ FLOW_CONT_MIN ;
 int SL_EAGAIN ;
 int SL_SOC_ERROR ;
 int VERIFY_PROTOCOL (int) ;
 int _SlDrvMsgWrite (int *,int *,void*) ;
 int _SlDrvObjLockWaitForever (int *) ;
 int _SlDrvObjUnLock (int *) ;
 int _SlDrvSyncObjWaitForever (int *) ;
 TYPE_2__* g_pCB ;
 int sl_SyncObjClear (int *) ;

_SlReturnVal_t _SlDrvDataWriteOp(
    _SlSd_t Sd,
    _SlCmdCtrl_t *pCmdCtrl ,
    void *pTxRxDescBuff ,
    _SlCmdExt_t *pCmdExt)
{
    _SlReturnVal_t RetVal = SL_EAGAIN;
    while( 1 )
    {

    _SlDrvObjLockWaitForever(&g_pCB->FlowContCB.TxLockObj);




        sl_SyncObjClear(&g_pCB->FlowContCB.TxSyncObj);


        if(g_pCB->SocketTXFailure & (1<<(Sd & BSD_SOCKET_ID_MASK)))
        {
  _SlDrvObjUnLock(&g_pCB->FlowContCB.TxLockObj);
            return SL_SOC_ERROR;
        }
        if(g_pCB->FlowContCB.TxPoolCnt <= FLOW_CONT_MIN + 1)
        {


            if( g_pCB->SocketNonBlocking & (1<< (Sd & BSD_SOCKET_ID_MASK)))
            {
            _SlDrvObjUnLock(&g_pCB->FlowContCB.TxLockObj);
                return RetVal;
            }


        _SlDrvSyncObjWaitForever(&g_pCB->FlowContCB.TxSyncObj);
        }
        if(g_pCB->FlowContCB.TxPoolCnt > FLOW_CONT_MIN + 1 )
        {
            break;
        }
        else
        {
   _SlDrvObjUnLock(&g_pCB->FlowContCB.TxLockObj);
        }
    }

    _SlDrvObjLockWaitForever(&g_pCB->GlobalLockObj);


    VERIFY_PROTOCOL(g_pCB->FlowContCB.TxPoolCnt > FLOW_CONT_MIN + 1 );
    g_pCB->FlowContCB.TxPoolCnt--;

    _SlDrvObjUnLock(&g_pCB->FlowContCB.TxLockObj);


    RetVal = _SlDrvMsgWrite(pCmdCtrl, pCmdExt, pTxRxDescBuff);

    _SlDrvObjUnLock(&g_pCB->GlobalLockObj);

    return RetVal;
}
