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
typedef  scalar_t__ _i16 ;
typedef  int /*<<< orphan*/  _SlReturnVal_t ;
struct TYPE_5__ {int RxMsgClass; int /*<<< orphan*/ * pAsyncBuf; } ;
struct TYPE_6__ {TYPE_1__ AsyncExt; } ;
struct TYPE_7__ {scalar_t__ IsCmdRespWaited; int /*<<< orphan*/  GlobalLockObj; TYPE_2__ FunctionParams; int /*<<< orphan*/  RxDoneCnt; int /*<<< orphan*/  CmdSyncObj; } ;

/* Variables and functions */
#define  ASYNC_EVT_CLASS 131 
#define  CMD_RESP_CLASS 130 
#define  DUMMY_MSG_CLASS 129 
 scalar_t__ FALSE ; 
 scalar_t__ OSI_OK ; 
#define  RECV_RESP_CLASS 128 
 int /*<<< orphan*/  SL_RET_CODE_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_3__* g_pCB ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

_SlReturnVal_t FUNC10(void *pValue)
{
#ifdef SL_POLLING_MODE_USED
    _i16 retCode = OSI_OK;
    /*  for polling based systems */
    do
    {
        retCode = sl_LockObjLock(&g_pCB->GlobalLockObj, 0);
        if ( OSI_OK != retCode )
        {
            if (TRUE == g_pCB->IsCmdRespWaited)
            {
                _SlDrvSyncObjSignal(&g_pCB->CmdSyncObj);
                return SL_RET_CODE_OK;
            }
        }

    }
    while (OSI_OK != retCode);

#else
    FUNC5(&g_pCB->GlobalLockObj);
#endif


    /*  Messages might have been read by CmdResp context. Therefore after */
    /*  getting LockObj, check again where the Pending Rx Msg is still present. */
    if(FALSE == (FUNC2(g_pCB)))
    {
        FUNC6(&g_pCB->GlobalLockObj);
        
        return SL_RET_CODE_OK;
    }

    FUNC1(FUNC4());

    g_pCB->RxDoneCnt++;

    switch(g_pCB->FunctionParams.AsyncExt.RxMsgClass)
    {
    case ASYNC_EVT_CLASS:
        /*  If got here and protected by LockObj a message is waiting  */
        /*  to be read */
        FUNC0(NULL != g_pCB->FunctionParams.AsyncExt.pAsyncBuf);
   
        FUNC3();        
        
#if (SL_MEMORY_MGMT == SL_MEMORY_MGMT_DYNAMIC)
        FUNC8(g_pCB->FunctionParams.AsyncExt.pAsyncBuf);
#else
        g_pCB->FunctionParams.AsyncExt.pAsyncBuf = NULL;
#endif
        break;
    case DUMMY_MSG_CLASS:
    case RECV_RESP_CLASS:
        /* These types are legal in this context. Do nothing */
        break;
    case CMD_RESP_CLASS:
        /* Command response is illegal in this context. */
        /* No 'break' here: Assert! */
    default:
        FUNC0(0);
    }

    FUNC6(&g_pCB->GlobalLockObj);

    return(SL_RET_CODE_OK);
}