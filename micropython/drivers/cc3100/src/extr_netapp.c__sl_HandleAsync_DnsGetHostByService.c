
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ _u16 ;
typedef int _i8 ;
struct TYPE_10__ {scalar_t__ TextLen; int Status; int Port; int Address; } ;
typedef TYPE_4__ _GetHostByServiceIPv4AsyncResponse_t ;
struct TYPE_11__ {scalar_t__* inout_TextLen; int out_pText; int Status; int * out_pPort; int * out_pAddr; } ;
typedef TYPE_5__ _GetHostByServiceAsyncResponse_t ;
struct TYPE_8__ {size_t ActionIndex; } ;
struct TYPE_9__ {TYPE_2__ AsyncExt; } ;
struct TYPE_12__ {TYPE_3__ FunctionParams; TYPE_1__* ObjPool; } ;
struct TYPE_7__ {int AdditionalData; int SyncObj; int * pRespArgs; } ;


 int SL_NETAPP_FAMILY_MASK ;
 int VERIFY_SOCKET_CB (int) ;
 scalar_t__ _SL_RESP_ARGS_START (void*) ;
 int _SlDrvSyncObjSignal (int *) ;
 TYPE_6__* g_pCB ;
 int sl_Memcpy (int ,int *,scalar_t__) ;

void _sl_HandleAsync_DnsGetHostByService(void *pVoidBuf)
{

 _GetHostByServiceAsyncResponse_t* Res;
 _u16 TextLen;
 _u16 UserTextLen;





 _GetHostByServiceIPv4AsyncResponse_t *pMsgArgs = (_GetHostByServiceIPv4AsyncResponse_t *)_SL_RESP_ARGS_START(pVoidBuf);

    VERIFY_SOCKET_CB(((void*)0) != g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs);


 if(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].AdditionalData & SL_NETAPP_FAMILY_MASK)
 {
  return;
 }

 else
 {






 TextLen = pMsgArgs->TextLen;


  Res = (_GetHostByServiceAsyncResponse_t*)g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs;




 Res->out_pAddr[0] = pMsgArgs->Address;
 Res->out_pPort[0] = pMsgArgs->Port;
 Res->Status = pMsgArgs->Status;


 UserTextLen = Res->inout_TextLen[0];


 UserTextLen = (TextLen <= UserTextLen) ? TextLen : UserTextLen;
 Res->inout_TextLen[0] = UserTextLen ;







 sl_Memcpy(Res->out_pText ,
       (_i8 *)(& pMsgArgs[1]) ,
    UserTextLen );




  _SlDrvSyncObjSignal(&g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].SyncObj);
  return;
 }
}
