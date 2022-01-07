
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int _u32 ;
typedef scalar_t__ _SlReturnVal_t ;
typedef int _SlCmdExt_t ;
typedef int _SlCmdCtrl_t ;
struct TYPE_2__ {int GlobalLockObj; int IsCmdRespWaited; } ;


 int CPU_FREQ_IN_MHZ ;
 int DBG_MSG ;
 int MSG_312 ;
 int MSG_314 ;
 scalar_t__ SL_OS_RET_CODE_OK ;
 int SL_TRACE0 (int ,int ,char*) ;
 int TRUE ;
 int USEC_DELAY ;
 scalar_t__ _SlDrvMsgReadCmdCtx () ;
 scalar_t__ _SlDrvMsgWrite (int *,int *,void*) ;
 int _SlDrvObjLockWaitForever (int *) ;
 int _SlDrvObjUnLock (int *) ;
 int gFirstCmdMode ;
 TYPE_1__* g_pCB ;

_SlReturnVal_t _SlDrvCmdOp(
    _SlCmdCtrl_t *pCmdCtrl ,
    void *pTxRxDescBuff ,
    _SlCmdExt_t *pCmdExt)
{
    _SlReturnVal_t RetVal;


    _SlDrvObjLockWaitForever(&g_pCB->GlobalLockObj);

    g_pCB->IsCmdRespWaited = TRUE;

    SL_TRACE0(DBG_MSG, MSG_312, "_SlDrvCmdOp: call _SlDrvMsgWrite");



    RetVal = _SlDrvMsgWrite(pCmdCtrl, pCmdExt, pTxRxDescBuff);

    if(SL_OS_RET_CODE_OK == RetVal)
    {



        if( 0 == gFirstCmdMode )
        {
            volatile _u32 CountVal = 0;
            gFirstCmdMode = 1;
            CountVal = CPU_FREQ_IN_MHZ*USEC_DELAY;
            while( CountVal-- );
        }


        RetVal = _SlDrvMsgReadCmdCtx();
        SL_TRACE0(DBG_MSG, MSG_314, "_SlDrvCmdOp: exited _SlDrvMsgReadCmdCtx");
    }
    else
    {
        _SlDrvObjUnLock(&g_pCB->GlobalLockObj);
    }

    return RetVal;
}
