
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_13__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_5__ USBH_HandleTypeDef ;
struct TYPE_12__ {int session_id; } ;
struct TYPE_10__ {int code; int param1; } ;
struct TYPE_11__ {TYPE_2__ container; } ;
struct TYPE_14__ {TYPE_4__ ptp; TYPE_3__ events; } ;
struct TYPE_9__ {TYPE_6__* pData; } ;
typedef TYPE_6__ MTP_HandleTypeDef ;
 int USBH_DbgLog (char*,int ) ;
 int USBH_MTP_EventsCallback (TYPE_5__*,int,int ) ;

__attribute__((used)) static void MTP_DecodeEvent (USBH_HandleTypeDef *phost)
{
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;

  uint16_t code;
  uint32_t param1;


  code = MTP_Handle->events.container.code;
  param1 = MTP_Handle->events.container.param1;

 switch(code)
 {
    case 129:
      USBH_DbgLog("EVT: PTP_EC_Undefined in session %u", MTP_Handle->ptp.session_id);
      break;
    case 142:
      USBH_DbgLog("EVT: PTP_EC_CancelTransaction in session %u", MTP_Handle->ptp.session_id);
      break;
    case 137:
      USBH_DbgLog("EVT: PTP_EC_ObjectAdded in session %u", MTP_Handle->ptp.session_id);
      break;

    case 135:
      USBH_DbgLog("EVT: PTP_EC_ObjectRemoved in session %u", MTP_Handle->ptp.session_id);
      break;

    case 132:
      USBH_DbgLog("EVT: PTP_EC_StoreAdded in session %u", MTP_Handle->ptp.session_id);
      break;

    case 130:
      USBH_DbgLog("EVT: PTP_EC_StoreRemoved in session %u", MTP_Handle->ptp.session_id);
      break;

    case 139:
      USBH_DbgLog("EVT: PTP_EC_DevicePropChanged in session %u", MTP_Handle->ptp.session_id);
      break;

    case 136:
      USBH_DbgLog("EVT: PTP_EC_ObjectInfoChanged in session %u", MTP_Handle->ptp.session_id);
      break;

    case 140:
      USBH_DbgLog("EVT: PTP_EC_DeviceInfoChanged in session %u", MTP_Handle->ptp.session_id);
      break;

    case 134:
      USBH_DbgLog("EVT: PTP_EC_RequestObjectTransfer in session %u", MTP_Handle->ptp.session_id);
      break;

    case 131:
      USBH_DbgLog("EVT: PTP_EC_StoreFull in session %u", MTP_Handle->ptp.session_id);
      break;

    case 138:
      USBH_DbgLog("EVT: PTP_EC_DeviceReset in session %u", MTP_Handle->ptp.session_id);
      break;

    case 133 :
      USBH_DbgLog( "EVT: PTP_EC_StorageInfoChanged in session %u", MTP_Handle->ptp.session_id);
      break;

    case 141 :
      USBH_DbgLog( "EVT: PTP_EC_CaptureComplete in session %u", MTP_Handle->ptp.session_id);
      break;

    case 128 :
      USBH_DbgLog( "EVT: PTP_EC_UnreportedStatus in session %u", MTP_Handle->ptp.session_id);
      break;

    default :
      USBH_DbgLog( "Received unknown event in session %u", MTP_Handle->ptp.session_id);
      break;
  }

 USBH_MTP_EventsCallback(phost, code, param1);
}
