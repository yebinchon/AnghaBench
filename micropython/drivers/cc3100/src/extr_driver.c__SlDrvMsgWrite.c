
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef scalar_t__ _u8 ;
typedef int _SlReturnVal_t ;
struct TYPE_15__ {int RxPayloadLen; scalar_t__ TxPayloadLen; scalar_t__* pRxPayload; scalar_t__* pTxPayload; } ;
typedef TYPE_3__ _SlCmdExt_t ;
struct TYPE_16__ {scalar_t__ TxDescLen; int Opcode; } ;
typedef TYPE_4__ _SlCmdCtrl_t ;
struct TYPE_18__ {int Short; int Long; } ;
struct TYPE_14__ {scalar_t__ Len; int Opcode; } ;
struct TYPE_13__ {scalar_t__* pTxRxDescBuff; TYPE_3__* pCmdExt; TYPE_4__* pCmdCtrl; } ;
struct TYPE_17__ {int FD; TYPE_2__ TempProtocolHeader; TYPE_1__ FunctionParams; } ;
struct TYPE_12__ {int Write; } ;


 scalar_t__ FALSE ;
 TYPE_11__ MsgCnt ;
 int NWP_IF_WRITE_CHECK (int ,scalar_t__*,int) ;
 int SL_OS_RET_CODE_OK ;
 int SYNC_PATTERN_LEN ;
 scalar_t__ TRUE ;
 int VERIFY_PROTOCOL (int) ;
 int _SL_CMD_HDR_SIZE ;
 int _SL_DBG_CNT_INC (int ) ;
 int _SL_IS_PROTOCOL_ALIGNED_SIZE (scalar_t__) ;
 int _SL_PROTOCOL_ALIGN_SIZE (scalar_t__) ;
 scalar_t__ _SL_PROTOCOL_CALC_LEN (TYPE_4__*,TYPE_3__*) ;
 TYPE_6__ g_H2NSyncPattern ;
 TYPE_5__* g_pCB ;
 int sl_IfEndWriteSequence (int ) ;
 int sl_IfStartWriteSequence (int ) ;

_SlReturnVal_t _SlDrvMsgWrite(_SlCmdCtrl_t *pCmdCtrl,_SlCmdExt_t *pCmdExt, _u8 *pTxRxDescBuff)
{
    _u8 sendRxPayload = FALSE;
    VERIFY_PROTOCOL(((void*)0) != pCmdCtrl);

    g_pCB->FunctionParams.pCmdCtrl = pCmdCtrl;
    g_pCB->FunctionParams.pTxRxDescBuff = pTxRxDescBuff;
    g_pCB->FunctionParams.pCmdExt = pCmdExt;

    g_pCB->TempProtocolHeader.Opcode = pCmdCtrl->Opcode;
    g_pCB->TempProtocolHeader.Len = _SL_PROTOCOL_CALC_LEN(pCmdCtrl, pCmdExt);

    if (pCmdExt && pCmdExt->RxPayloadLen < 0 && pCmdExt->TxPayloadLen)
    {
        pCmdExt->RxPayloadLen = pCmdExt->RxPayloadLen * (-1);
        sendRxPayload = TRUE;
        g_pCB->TempProtocolHeader.Len = g_pCB->TempProtocolHeader.Len + pCmdExt->RxPayloadLen;
    }
    NWP_IF_WRITE_CHECK(g_pCB->FD, (_u8 *)&g_H2NSyncPattern.Short, SYNC_PATTERN_LEN);



    NWP_IF_WRITE_CHECK(g_pCB->FD, (_u8 *)&g_pCB->TempProtocolHeader, _SL_CMD_HDR_SIZE);


    if (pTxRxDescBuff && pCmdCtrl->TxDescLen > 0)
    {
     NWP_IF_WRITE_CHECK(g_pCB->FD, pTxRxDescBuff,
                           _SL_PROTOCOL_ALIGN_SIZE(pCmdCtrl->TxDescLen));
    }




    if (sendRxPayload == TRUE )
    {
      NWP_IF_WRITE_CHECK(g_pCB->FD, pCmdExt->pRxPayload,
                           _SL_PROTOCOL_ALIGN_SIZE(pCmdExt->RxPayloadLen));
    }


    if (pCmdExt && pCmdExt->TxPayloadLen > 0)
    {


        VERIFY_PROTOCOL(_SL_IS_PROTOCOL_ALIGNED_SIZE(pCmdCtrl->TxDescLen));

     NWP_IF_WRITE_CHECK(g_pCB->FD, pCmdExt->pTxPayload,
                           _SL_PROTOCOL_ALIGN_SIZE(pCmdExt->TxPayloadLen));
    }


    _SL_DBG_CNT_INC(MsgCnt.Write);





    return SL_OS_RET_CODE_OK;
}
