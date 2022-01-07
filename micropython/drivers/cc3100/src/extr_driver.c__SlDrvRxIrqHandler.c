
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int _SlSpawnEntryFunc_t ;
struct TYPE_2__ {scalar_t__ IsCmdRespWaited; int CmdSyncObj; } ;


 int OSI_RET_OK_CHECK (int ) ;
 int RxIrqCnt ;
 scalar_t__ TRUE ;
 scalar_t__ _SlDrvMsgReadSpawnCtx ;
 TYPE_1__* g_pCB ;
 int sl_IfMaskIntHdlr () ;
 int sl_Spawn (int ,int *,int ) ;
 int sl_SyncObjSignalFromIRQ (int *) ;

void _SlDrvRxIrqHandler(void *pValue)
{
    sl_IfMaskIntHdlr();

    RxIrqCnt++;

    if (TRUE == g_pCB->IsCmdRespWaited)
    {
        OSI_RET_OK_CHECK( sl_SyncObjSignalFromIRQ(&g_pCB->CmdSyncObj) );
    }
    else
    {
        sl_Spawn((_SlSpawnEntryFunc_t)_SlDrvMsgReadSpawnCtx, ((void*)0), 0);
    }
}
