#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _SlSpawnEntryFunc_t ;
typedef  int /*<<< orphan*/  _SlReturnVal_t ;
struct TYPE_5__ {scalar_t__ RxMsgClass; int /*<<< orphan*/ * pAsyncBuf; } ;
struct TYPE_6__ {TYPE_1__ AsyncExt; } ;
struct TYPE_7__ {scalar_t__ IsCmdRespWaited; int /*<<< orphan*/  GlobalLockObj; int /*<<< orphan*/  CmdSyncObj; TYPE_2__ FunctionParams; int /*<<< orphan*/  RxDoneCnt; } ;

/* Variables and functions */
 scalar_t__ ASYNC_EVT_CLASS ; 
 scalar_t__ CMD_RESP_CLASS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SL_OS_RET_CODE_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ _SlDrvMsgReadSpawnCtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* g_pCB ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

_SlReturnVal_t FUNC9(void)
{

    /*  after command response is received and isCmdRespWaited */
    /*  flag is set FALSE, it is necessary to read out all */
    /*  Async messages in Commands context, because ssiDma_IsrHandleSignalFromSlave */
    /*  could have dispatched some Async messages to g_NwpIf.CmdSyncObj */
    /*  after command response but before this response has been processed */
    /*  by spi_singleRead and isCmdRespWaited was set FALSE. */
    while (TRUE == g_pCB->IsCmdRespWaited)
    {
        if(FUNC1(g_pCB))
        {
            FUNC0(FUNC3());
            g_pCB->RxDoneCnt++;

            if (CMD_RESP_CLASS == g_pCB->FunctionParams.AsyncExt.RxMsgClass)
            {
                g_pCB->IsCmdRespWaited = FALSE;

                /*  In case CmdResp has been read without  waiting on CmdSyncObj -  that */
                /*  Sync object. That to prevent old signal to be processed. */
                FUNC8(&g_pCB->CmdSyncObj);
            }
            else if (ASYNC_EVT_CLASS == g_pCB->FunctionParams.AsyncExt.RxMsgClass)
            {
                /*  If Async event has been read in CmdResp context, check whether */
                /*  there is a handler for this event. If there is, spawn specific */
                /*  handler. Otherwise free the event's buffer. */
                /*  This way there will be no "dry shots" from CmdResp context to */
                /*  temporary context, i.e less waste of CPU and faster buffer */
                /*  release. */
                FUNC2();
                
                
#if (SL_MEMORY_MGMT == SL_MEMORY_MGMT_DYNAMIC)
                FUNC6(g_pCB->FunctionParams.AsyncExt.pAsyncBuf);
#else
                g_pCB->FunctionParams.AsyncExt.pAsyncBuf = NULL;
#endif
            }
        }
        else
        {
            /* CmdSyncObj will be signaled by IRQ */
             FUNC5(&g_pCB->CmdSyncObj);
        }
    }

    /*  If there are more pending Rx Msgs after CmdResp is received, */
    /*  that means that these are Async, Dummy or Read Data Msgs. */
    /*  Spawn _SlDrvMsgReadSpawnCtx to trigger reading these messages from */
    /*  Temporary context. */
    /* sl_Spawn is activated, using a different context */

    FUNC4(&g_pCB->GlobalLockObj);
    
    if(FUNC1(g_pCB))
    {
        FUNC7((_SlSpawnEntryFunc_t)_SlDrvMsgReadSpawnCtx, NULL, 0);
    }

    return SL_OS_RET_CODE_OK;
}