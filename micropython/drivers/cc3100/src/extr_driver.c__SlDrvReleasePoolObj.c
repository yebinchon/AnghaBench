
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t _u8 ;
struct TYPE_4__ {size_t PendingPoolIdx; int ActiveActionsBitmap; size_t ActivePoolIdx; size_t FreePoolIdx; TYPE_1__* ObjPool; } ;
struct TYPE_3__ {scalar_t__ ActionID; int AdditionalData; size_t NextIndex; int * pRespArgs; int SyncObj; } ;


 int BSD_SOCKET_ID_MASK ;
 size_t MAX_CONCURRENT_ACTIONS ;
 int SL_MAX_SOCKETS ;
 int _SlDrvProtectionObjLockWaitForever () ;
 int _SlDrvProtectionObjUnLock () ;
 int _SlDrvSyncObjSignal (int *) ;
 int _SlRemoveFromList (size_t*,size_t) ;
 TYPE_2__* g_pCB ;

void _SlDrvReleasePoolObj(_u8 ObjIdx)
{

    _u8 PendingIndex;


     _SlDrvProtectionObjLockWaitForever();




 PendingIndex = g_pCB->PendingPoolIdx;

 while(MAX_CONCURRENT_ACTIONS > PendingIndex)
 {

  if ( (g_pCB->ObjPool[PendingIndex].ActionID == g_pCB->ObjPool[ObjIdx].ActionID) &&
   ( (SL_MAX_SOCKETS == (g_pCB->ObjPool[PendingIndex].AdditionalData & BSD_SOCKET_ID_MASK)) ||
   ((SL_MAX_SOCKETS > (g_pCB->ObjPool[ObjIdx].AdditionalData & BSD_SOCKET_ID_MASK)) && ( (g_pCB->ObjPool[PendingIndex].AdditionalData & BSD_SOCKET_ID_MASK) == (g_pCB->ObjPool[ObjIdx].AdditionalData & BSD_SOCKET_ID_MASK) ))) )
  {

   _SlRemoveFromList(&g_pCB->PendingPoolIdx, PendingIndex);
    _SlDrvSyncObjSignal(&g_pCB->ObjPool[PendingIndex].SyncObj);
    break;
  }
  PendingIndex = g_pCB->ObjPool[PendingIndex].NextIndex;
 }


  if (SL_MAX_SOCKETS > (g_pCB->ObjPool[ObjIdx].AdditionalData & BSD_SOCKET_ID_MASK))
  {

   g_pCB->ActiveActionsBitmap &= ~(1<<(g_pCB->ObjPool[ObjIdx].AdditionalData & BSD_SOCKET_ID_MASK));
  }
  else
  {

   g_pCB->ActiveActionsBitmap &= ~(1<<g_pCB->ObjPool[ObjIdx].ActionID);
  }


    g_pCB->ObjPool[ObjIdx].pRespArgs = ((void*)0);
    g_pCB->ObjPool[ObjIdx].ActionID = 0;
    g_pCB->ObjPool[ObjIdx].AdditionalData = SL_MAX_SOCKETS;


    _SlRemoveFromList(&g_pCB->ActivePoolIdx, ObjIdx);

    g_pCB->ObjPool[ObjIdx].NextIndex = g_pCB->FreePoolIdx;
    g_pCB->FreePoolIdx = ObjIdx;
 _SlDrvProtectionObjUnLock();
}
