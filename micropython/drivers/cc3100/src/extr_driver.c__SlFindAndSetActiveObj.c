
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t _u8 ;
typedef int _SlReturnVal_t ;
typedef scalar_t__ _SlOpcode_t ;
struct TYPE_10__ {scalar_t__ ActionAsyncOpcode; int AsyncEventHandler; } ;
struct TYPE_6__ {size_t ActionIndex; int AsyncEvtHandler; } ;
struct TYPE_7__ {TYPE_1__ AsyncExt; } ;
struct TYPE_9__ {size_t ActivePoolIdx; TYPE_3__* ObjPool; TYPE_2__ FunctionParams; } ;
struct TYPE_8__ {int AdditionalData; scalar_t__ ActionID; size_t NextIndex; } ;


 size_t BSD_SOCKET_ID_MASK ;
 size_t MAX_CONCURRENT_ACTIONS ;
 size_t MAX_SOCKET_ENUM_IDX ;
 scalar_t__ RECV_ID ;
 size_t SL_MAX_SOCKETS ;
 int SL_NETAPP_FAMILY_MASK ;
 scalar_t__ SL_OPCODE_IPV6 ;
 scalar_t__ SL_OPCODE_SOCKET_RECVASYNCRESPONSE ;
 scalar_t__ SL_OPCODE_SOCKET_RECVFROMASYNCRESPONSE ;
 scalar_t__ SL_OPCODE_SOCKET_RECVFROMASYNCRESPONSE_V6 ;
 int SL_RET_CODE_OK ;
 int SL_RET_CODE_SELF_ERROR ;
 TYPE_5__* _SlActionLookupTable ;
 TYPE_4__* g_pCB ;

_SlReturnVal_t _SlFindAndSetActiveObj(_SlOpcode_t Opcode, _u8 Sd)
{
    _u8 ActiveIndex;

    ActiveIndex = g_pCB->ActivePoolIdx;


  while (MAX_CONCURRENT_ACTIONS > ActiveIndex)




    {

        if (g_pCB->ObjPool[ActiveIndex].AdditionalData & SL_NETAPP_FAMILY_MASK)
        {
            Opcode &= ~SL_OPCODE_IPV6;
        }

        if ((g_pCB->ObjPool[ActiveIndex].ActionID == RECV_ID) && (Sd == g_pCB->ObjPool[ActiveIndex].AdditionalData) &&
      ( (SL_OPCODE_SOCKET_RECVASYNCRESPONSE == Opcode) || (SL_OPCODE_SOCKET_RECVFROMASYNCRESPONSE == Opcode)

                        || (SL_OPCODE_SOCKET_RECVFROMASYNCRESPONSE_V6 == Opcode)

                          )

               )
        {
            g_pCB->FunctionParams.AsyncExt.ActionIndex = ActiveIndex;
            return SL_RET_CODE_OK;
        }

        if ( (_SlActionLookupTable[ g_pCB->ObjPool[ActiveIndex].ActionID - MAX_SOCKET_ENUM_IDX].ActionAsyncOpcode == Opcode) &&
            ( ((Sd == (g_pCB->ObjPool[ActiveIndex].AdditionalData & BSD_SOCKET_ID_MASK) ) && (SL_MAX_SOCKETS > Sd)) || (SL_MAX_SOCKETS == (g_pCB->ObjPool[ActiveIndex].AdditionalData & BSD_SOCKET_ID_MASK)) ) )
        {

            g_pCB->FunctionParams.AsyncExt.AsyncEvtHandler = _SlActionLookupTable[ g_pCB->ObjPool[ActiveIndex].ActionID - MAX_SOCKET_ENUM_IDX].AsyncEventHandler;
            g_pCB->FunctionParams.AsyncExt.ActionIndex = ActiveIndex;
            return SL_RET_CODE_OK;
        }
        ActiveIndex = g_pCB->ObjPool[ActiveIndex].NextIndex;
    }

    return SL_RET_CODE_SELF_ERROR;



}
