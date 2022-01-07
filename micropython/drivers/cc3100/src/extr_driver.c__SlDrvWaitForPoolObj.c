
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t _u8 ;
struct TYPE_4__ {scalar_t__ FreePoolIdx; int ActiveActionsBitmap; size_t PendingPoolIdx; size_t ActivePoolIdx; TYPE_1__* ObjPool; } ;
struct TYPE_3__ {scalar_t__ NextIndex; size_t ActionID; size_t AdditionalData; int SyncObj; } ;


 scalar_t__ MAX_CONCURRENT_ACTIONS ;
 size_t SL_MAX_SOCKETS ;
 int _SlDrvProtectionObjLockWaitForever () ;
 int _SlDrvProtectionObjUnLock () ;
 int _SlDrvSyncObjWaitForever (int *) ;
 TYPE_2__* g_pCB ;

_u8 _SlDrvWaitForPoolObj(_u8 ActionID, _u8 SocketID)
{
    _u8 CurrObjIndex = MAX_CONCURRENT_ACTIONS;


            _SlDrvProtectionObjLockWaitForever();
    if (MAX_CONCURRENT_ACTIONS > g_pCB->FreePoolIdx)
    {

        CurrObjIndex = g_pCB->FreePoolIdx;


        if (MAX_CONCURRENT_ACTIONS > g_pCB->ObjPool[CurrObjIndex].NextIndex)
        {
            g_pCB->FreePoolIdx = g_pCB->ObjPool[CurrObjIndex].NextIndex;
        }
        else

        {

            g_pCB->FreePoolIdx = MAX_CONCURRENT_ACTIONS;
        }
    }
    else
    {
  _SlDrvProtectionObjUnLock();
        return CurrObjIndex;
    }
    g_pCB->ObjPool[CurrObjIndex].ActionID = (_u8)ActionID;
    if (SL_MAX_SOCKETS > SocketID)
    {
        g_pCB->ObjPool[CurrObjIndex].AdditionalData = SocketID;
    }



 while ( ( (SL_MAX_SOCKETS > SocketID) && (g_pCB->ActiveActionsBitmap & (1<<SocketID)) ) ||
            ( (g_pCB->ActiveActionsBitmap & (1<<ActionID)) && (SL_MAX_SOCKETS == SocketID) ) )
    {

        g_pCB->ObjPool[CurrObjIndex].NextIndex = g_pCB->PendingPoolIdx;
        g_pCB->PendingPoolIdx = CurrObjIndex;
  _SlDrvProtectionObjUnLock();


        _SlDrvSyncObjWaitForever(&g_pCB->ObjPool[CurrObjIndex].SyncObj);


        _SlDrvProtectionObjLockWaitForever();
    }


    if (SL_MAX_SOCKETS > SocketID)
    {
        g_pCB->ActiveActionsBitmap |= (1<<SocketID);
    }
    else
    {
        g_pCB->ActiveActionsBitmap |= (1<<ActionID);
    }

    g_pCB->ObjPool[CurrObjIndex].NextIndex = g_pCB->ActivePoolIdx;
    g_pCB->ActivePoolIdx = CurrObjIndex;

 _SlDrvProtectionObjUnLock();
    return CurrObjIndex;
}
