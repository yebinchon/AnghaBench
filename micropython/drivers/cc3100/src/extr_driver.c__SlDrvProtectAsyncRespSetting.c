
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t _u8 ;
struct TYPE_4__ {TYPE_1__* ObjPool; } ;
struct TYPE_3__ {size_t* pRespArgs; } ;


 size_t MAX_CONCURRENT_ACTIONS ;
 int _SlDrvProtectionObjLockWaitForever () ;
 int _SlDrvProtectionObjUnLock () ;
 size_t _SlDrvWaitForPoolObj (size_t,size_t) ;
 TYPE_2__* g_pCB ;

_u8 _SlDrvProtectAsyncRespSetting(_u8 *pAsyncRsp, _u8 ActionID, _u8 SocketID)
{
    _u8 ObjIdx;



    ObjIdx = _SlDrvWaitForPoolObj(ActionID, SocketID);

    if (MAX_CONCURRENT_ACTIONS != ObjIdx)
    {
        _SlDrvProtectionObjLockWaitForever();
        g_pCB->ObjPool[ObjIdx].pRespArgs = pAsyncRsp;
        _SlDrvProtectionObjUnLock();
    }

    return ObjIdx;
}
