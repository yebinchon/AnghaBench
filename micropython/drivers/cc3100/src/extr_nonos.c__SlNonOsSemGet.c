
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ _SlNonOsTime_t ;
typedef scalar_t__ _SlNonOsSemObj_t ;
typedef int _SlNonOsRetVal_t ;


 scalar_t__ NONOS_NO_WAIT ;
 int NONOS_RET_ERR ;
 int NONOS_RET_OK ;
 scalar_t__ NONOS_WAIT_FOREVER ;
 int _SlNonOsMainLoopTask () ;
 int _SlSyncWaitLoopCallback () ;
 scalar_t__ __NON_OS_SYNC_OBJ_SIGNAL_VALUE ;

_SlNonOsRetVal_t _SlNonOsSemGet(_SlNonOsSemObj_t* pSyncObj, _SlNonOsSemObj_t WaitValue, _SlNonOsSemObj_t SetValue, _SlNonOsTime_t Timeout)
{



    while (Timeout>0)
    {
        if (WaitValue == *pSyncObj)
        {
            *pSyncObj = SetValue;
            break;
        }
        if (Timeout != NONOS_WAIT_FOREVER)
        {
            Timeout--;
        }
        _SlNonOsMainLoopTask();
    }

    if (0 == Timeout)
    {
        return NONOS_RET_ERR;
    }
    else
    {
        return NONOS_RET_OK;
    }
}
