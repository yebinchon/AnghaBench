#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ _u8 ;
typedef  int /*<<< orphan*/  _SlReturnVal_t ;
struct TYPE_15__ {int RxPayloadLen; scalar_t__ TxPayloadLen; scalar_t__* pRxPayload; scalar_t__* pTxPayload; } ;
typedef  TYPE_3__ _SlCmdExt_t ;
struct TYPE_16__ {scalar_t__ TxDescLen; int /*<<< orphan*/  Opcode; } ;
typedef  TYPE_4__ _SlCmdCtrl_t ;
struct TYPE_18__ {int /*<<< orphan*/  Short; int /*<<< orphan*/  Long; } ;
struct TYPE_14__ {scalar_t__ Len; int /*<<< orphan*/  Opcode; } ;
struct TYPE_13__ {scalar_t__* pTxRxDescBuff; TYPE_3__* pCmdExt; TYPE_4__* pCmdCtrl; } ;
struct TYPE_17__ {int /*<<< orphan*/  FD; TYPE_2__ TempProtocolHeader; TYPE_1__ FunctionParams; } ;
struct TYPE_12__ {int /*<<< orphan*/  Write; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 TYPE_11__ MsgCnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  SL_OS_RET_CODE_OK ; 
 int SYNC_PATTERN_LEN ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int _SL_CMD_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_6__ g_H2NSyncPattern ; 
 TYPE_5__* g_pCB ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

_SlReturnVal_t FUNC8(_SlCmdCtrl_t  *pCmdCtrl,_SlCmdExt_t  *pCmdExt, _u8 *pTxRxDescBuff)
{
    _u8 sendRxPayload = FALSE;
    FUNC1(NULL != pCmdCtrl);

    g_pCB->FunctionParams.pCmdCtrl = pCmdCtrl;
    g_pCB->FunctionParams.pTxRxDescBuff = pTxRxDescBuff;
    g_pCB->FunctionParams.pCmdExt = pCmdExt;
    
    g_pCB->TempProtocolHeader.Opcode   = pCmdCtrl->Opcode;
    g_pCB->TempProtocolHeader.Len   = FUNC5(pCmdCtrl, pCmdExt);

    if (pCmdExt && pCmdExt->RxPayloadLen < 0 && pCmdExt->TxPayloadLen)
    {
        pCmdExt->RxPayloadLen = pCmdExt->RxPayloadLen * (-1); /* change sign */
        sendRxPayload = TRUE;
        g_pCB->TempProtocolHeader.Len = g_pCB->TempProtocolHeader.Len + pCmdExt->RxPayloadLen;
    }

#ifdef SL_START_WRITE_STAT
    sl_IfStartWriteSequence(g_pCB->FD);
#endif

#ifdef SL_IF_TYPE_UART
    /*  Write long sync pattern */
    NWP_IF_WRITE_CHECK(g_pCB->FD, (_u8 *)&g_H2NSyncPattern.Long, 2*SYNC_PATTERN_LEN);
#else
    /*  Write short sync pattern */
    FUNC0(g_pCB->FD, (_u8 *)&g_H2NSyncPattern.Short, SYNC_PATTERN_LEN);
#endif

    /*  Header */
    FUNC0(g_pCB->FD, (_u8 *)&g_pCB->TempProtocolHeader, _SL_CMD_HDR_SIZE);

    /*  Descriptors */
    if (pTxRxDescBuff && pCmdCtrl->TxDescLen > 0)
    {
    	FUNC0(g_pCB->FD, pTxRxDescBuff, 
                           FUNC4(pCmdCtrl->TxDescLen));
    }

    /*  A special mode where Rx payload and Rx length are used as Tx as well */
    /*  This mode requires no Rx payload on the response and currently used by fs_Close and sl_Send on */
    /*  transceiver mode */
    if (sendRxPayload == TRUE )
    {
     	FUNC0(g_pCB->FD, pCmdExt->pRxPayload, 
                           FUNC4(pCmdExt->RxPayloadLen));
    }

    /*  Payload */
    if (pCmdExt && pCmdExt->TxPayloadLen > 0)
    {
        /*  If the message has payload, it is mandatory that the message's arguments are protocol aligned. */
        /*  Otherwise the aligning of arguments will create a gap between arguments and payload. */
        FUNC1(FUNC3(pCmdCtrl->TxDescLen));

    	FUNC0(g_pCB->FD, pCmdExt->pTxPayload, 
                           FUNC4(pCmdExt->TxPayloadLen));
    }


    FUNC2(MsgCnt.Write);

#ifdef SL_START_WRITE_STAT
    sl_IfEndWriteSequence(g_pCB->FD);
#endif

    return SL_OS_RET_CODE_OK;
}