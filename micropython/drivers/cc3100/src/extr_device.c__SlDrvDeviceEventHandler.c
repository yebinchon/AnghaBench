
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* _u32 ;
struct TYPE_15__ {int Opcode; } ;
struct TYPE_16__ {TYPE_4__ GenHeader; } ;
typedef TYPE_5__ _SlResponseHeader_t ;
struct TYPE_17__ {int status; } ;
typedef TYPE_6__ _BasicResponse_t ;
struct TYPE_13__ {int status; int sender; } ;
struct TYPE_12__ {void* AbortData; void* AbortType; } ;
struct TYPE_14__ {TYPE_2__ deviceEvent; TYPE_1__ deviceReport; } ;
struct TYPE_18__ {TYPE_3__ EventData; int Event; } ;
typedef int SlErrorSender_e ;
typedef TYPE_7__ SlDeviceEvent_t ;


 int MSG_306 ;
 int SL_DEVICE_ABORT_ERROR_EVENT ;
 int SL_DEVICE_FATAL_ERROR_EVENT ;
 int SL_ERROR_TRACE2 (int ,char*,int,int) ;




 scalar_t__ _SL_RESP_ARGS_START (TYPE_5__*) ;
 int _SlDrvHandleGeneralEvents (TYPE_7__*) ;
 int _sl_HandleAsync_InitComplete (TYPE_5__*) ;
 int _sl_HandleAsync_Stop (TYPE_5__*) ;

void _SlDrvDeviceEventHandler(void* pArgs)
{
    _SlResponseHeader_t *pHdr = (_SlResponseHeader_t *)pArgs;

    switch(pHdr->GenHeader.Opcode)
    {
    case 129:
        _sl_HandleAsync_InitComplete(pHdr);
        break;
    case 128:
        _sl_HandleAsync_Stop(pHdr);
        break;


  case 131:
   {







   }
        break;

    case 130:
        break;
    default:
        SL_ERROR_TRACE2(MSG_306, "ASSERT: _SlDrvDeviceEventHandler : invalid opcode = 0x%x = %1", pHdr->GenHeader.Opcode, pHdr->GenHeader.Opcode);
    }
}
