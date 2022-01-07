
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int _u8 ;
typedef int _SlReturnVal_t ;
typedef int _SlFunctionParams_t ;
typedef int _SlCmdExt_t ;
typedef int _SlCmdCtrl_t ;
struct TYPE_2__ {int FunctionParams; int IsCmdRespWaited; } ;


 int DBG_MSG ;
 int FALSE ;
 int MSG_312 ;
 int SL_TRACE0 (int ,int ,char*) ;
 int _SlDrvMsgWrite (int *,int *,void*) ;
 TYPE_1__* g_pCB ;
 int sl_Memcpy (int *,int *,int) ;

_SlReturnVal_t _SlDrvCmdSend(
    _SlCmdCtrl_t *pCmdCtrl ,
    void *pTxRxDescBuff ,
    _SlCmdExt_t *pCmdExt)
{
    _SlReturnVal_t RetVal;
    _u8 IsCmdRespWaitedOriginalVal;

    _SlFunctionParams_t originalFuncParms;


    IsCmdRespWaitedOriginalVal = g_pCB->IsCmdRespWaited;


    sl_Memcpy(&originalFuncParms, &g_pCB->FunctionParams, sizeof(_SlFunctionParams_t));

    g_pCB->IsCmdRespWaited = FALSE;

    SL_TRACE0(DBG_MSG, MSG_312, "_SlDrvCmdSend: call _SlDrvMsgWrite");


    RetVal = _SlDrvMsgWrite(pCmdCtrl, pCmdExt, pTxRxDescBuff);


    g_pCB->IsCmdRespWaited = IsCmdRespWaitedOriginalVal;


    sl_Memcpy(&g_pCB->FunctionParams, &originalFuncParms, sizeof(_SlFunctionParams_t));

    return RetVal;


}
