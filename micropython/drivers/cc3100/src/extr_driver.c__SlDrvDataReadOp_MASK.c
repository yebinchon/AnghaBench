#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t _u8 ;
typedef  int _SlSd_t ;
typedef  scalar_t__ _SlReturnVal_t ;
struct TYPE_10__ {scalar_t__ RxPayloadLen; int /*<<< orphan*/ * pRxPayload; } ;
typedef  TYPE_3__ _SlCmdExt_t ;
typedef  int /*<<< orphan*/  _SlCmdCtrl_t ;
struct TYPE_11__ {size_t* pArgs; int /*<<< orphan*/ * pData; } ;
typedef  TYPE_4__ _SlArgsData_t ;
struct TYPE_8__ {scalar_t__ TxPoolCnt; int /*<<< orphan*/  TxLockObj; int /*<<< orphan*/  TxSyncObj; } ;
struct TYPE_12__ {TYPE_2__* ObjPool; int /*<<< orphan*/  GlobalLockObj; TYPE_1__ FlowContCB; } ;
struct TYPE_9__ {size_t* pRespArgs; int /*<<< orphan*/  SyncObj; } ;

/* Variables and functions */
 int BSD_SOCKET_ID_MASK ; 
 scalar_t__ FLOW_CONT_MIN ; 
 size_t MAX_CONCURRENT_ACTIONS ; 
 int /*<<< orphan*/  RECV_ID ; 
 scalar_t__ SL_EBADF ; 
 int SL_MAX_SOCKETS ; 
 scalar_t__ SL_OS_RET_CODE_OK ; 
 scalar_t__ SL_POOL_IS_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 TYPE_5__* g_pCB ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

_SlReturnVal_t FUNC10(
    _SlSd_t             Sd,
    _SlCmdCtrl_t        *pCmdCtrl ,
    void                *pTxRxDescBuff ,
    _SlCmdExt_t         *pCmdExt)
{
    _SlReturnVal_t RetVal;
    _u8 ObjIdx = MAX_CONCURRENT_ACTIONS;
    _SlArgsData_t pArgsData;

    /* Validate input arguments */
    FUNC0(NULL != pCmdExt->pRxPayload);

    /* If zero bytes is requested, return error. */
    /*  This allows us not to fill remote socket's IP address in return arguments */
    FUNC0(0 != pCmdExt->RxPayloadLen);

    /* Validate socket */
    if((Sd & BSD_SOCKET_ID_MASK) >= SL_MAX_SOCKETS)
    {
        return SL_EBADF;
    }

    /*Use Obj to issue the command, if not available try later*/
    ObjIdx = (_u8)FUNC8(RECV_ID, Sd & BSD_SOCKET_ID_MASK);

    if (MAX_CONCURRENT_ACTIONS == ObjIdx)
    {
        return SL_POOL_IS_EMPTY;
    }

    FUNC4();

    pArgsData.pData = pCmdExt->pRxPayload;
    pArgsData.pArgs =  (_u8 *)pTxRxDescBuff;
    g_pCB->ObjPool[ObjIdx].pRespArgs =  (_u8 *)&pArgsData;

    FUNC5();


    /* Do Flow Control check/update for DataWrite operation */
    FUNC2(&g_pCB->FlowContCB.TxLockObj);


    /* Clear SyncObj for the case it was signalled before TxPoolCnt */
    /* dropped below '1' (last Data buffer was taken)  */
    /* OSI_RET_OK_CHECK( sl_SyncObjClear(&g_pCB->FlowContCB.TxSyncObj) ); */
    FUNC9(&g_pCB->FlowContCB.TxSyncObj);

    if(g_pCB->FlowContCB.TxPoolCnt <= FLOW_CONT_MIN)
    {

        /* If TxPoolCnt was increased by other thread at this moment,
                 TxSyncObj won't wait here */
        FUNC7(&g_pCB->FlowContCB.TxSyncObj);
       
    }

    FUNC2(&g_pCB->GlobalLockObj);
    

    FUNC0(g_pCB->FlowContCB.TxPoolCnt > FLOW_CONT_MIN);
    g_pCB->FlowContCB.TxPoolCnt--;

    FUNC3(&g_pCB->FlowContCB.TxLockObj);

    /* send the message */
    RetVal =  FUNC1(pCmdCtrl, pCmdExt, (_u8 *)pTxRxDescBuff);

    FUNC3(&g_pCB->GlobalLockObj);
    

    if(SL_OS_RET_CODE_OK == RetVal)
    {
        /* Wait for response message. Will be signaled by _SlDrvMsgRead. */
        FUNC7(&g_pCB->ObjPool[ObjIdx].SyncObj);
    }

    FUNC6(ObjIdx);
    return RetVal;
}