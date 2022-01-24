#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_13__ {TYPE_1__* pActiveClass; } ;
typedef  TYPE_5__ USBH_HandleTypeDef ;
struct TYPE_12__ {int /*<<< orphan*/  session_id; } ;
struct TYPE_10__ {int code; int /*<<< orphan*/  param1; } ;
struct TYPE_11__ {TYPE_2__ container; } ;
struct TYPE_14__ {TYPE_4__ ptp; TYPE_3__ events; } ;
struct TYPE_9__ {TYPE_6__* pData; } ;
typedef  TYPE_6__ MTP_HandleTypeDef ;

/* Variables and functions */
#define  PTP_EC_CancelTransaction 142 
#define  PTP_EC_CaptureComplete 141 
#define  PTP_EC_DeviceInfoChanged 140 
#define  PTP_EC_DevicePropChanged 139 
#define  PTP_EC_DeviceReset 138 
#define  PTP_EC_ObjectAdded 137 
#define  PTP_EC_ObjectInfoChanged 136 
#define  PTP_EC_ObjectRemoved 135 
#define  PTP_EC_RequestObjectTransfer 134 
#define  PTP_EC_StorageInfoChanged 133 
#define  PTP_EC_StoreAdded 132 
#define  PTP_EC_StoreFull 131 
#define  PTP_EC_StoreRemoved 130 
#define  PTP_EC_Undefined 129 
#define  PTP_EC_UnreportedStatus 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 (USBH_HandleTypeDef *phost) 
{
  MTP_HandleTypeDef *MTP_Handle =  phost->pActiveClass->pData; 
  
  uint16_t code;
  uint32_t param1;

  /* Process the event */
  code = MTP_Handle->events.container.code;
  param1 = MTP_Handle->events.container.param1;
  
 switch(code) 
 {
    case PTP_EC_Undefined:
      FUNC0("EVT: PTP_EC_Undefined in session %u", MTP_Handle->ptp.session_id);
      break;
    case PTP_EC_CancelTransaction:
      FUNC0("EVT: PTP_EC_CancelTransaction in session %u", MTP_Handle->ptp.session_id);
      break;
    case PTP_EC_ObjectAdded:
      FUNC0("EVT: PTP_EC_ObjectAdded in session %u", MTP_Handle->ptp.session_id);
      break;
      
    case PTP_EC_ObjectRemoved:
      FUNC0("EVT: PTP_EC_ObjectRemoved in session %u", MTP_Handle->ptp.session_id);
      break;
      
    case PTP_EC_StoreAdded:
      FUNC0("EVT: PTP_EC_StoreAdded in session %u", MTP_Handle->ptp.session_id);
      break;
      
    case PTP_EC_StoreRemoved:
      FUNC0("EVT: PTP_EC_StoreRemoved in session %u", MTP_Handle->ptp.session_id);
      break;
      
    case PTP_EC_DevicePropChanged:
      FUNC0("EVT: PTP_EC_DevicePropChanged in session %u", MTP_Handle->ptp.session_id);
      break;
      
    case PTP_EC_ObjectInfoChanged:
      FUNC0("EVT: PTP_EC_ObjectInfoChanged in session %u", MTP_Handle->ptp.session_id);
      break;
      
    case PTP_EC_DeviceInfoChanged:
      FUNC0("EVT: PTP_EC_DeviceInfoChanged in session %u", MTP_Handle->ptp.session_id);
      break;
      
    case PTP_EC_RequestObjectTransfer:
      FUNC0("EVT: PTP_EC_RequestObjectTransfer in session %u", MTP_Handle->ptp.session_id);
      break;
      
    case PTP_EC_StoreFull:
      FUNC0("EVT: PTP_EC_StoreFull in session %u", MTP_Handle->ptp.session_id);
      break;
      
    case PTP_EC_DeviceReset:
      FUNC0("EVT: PTP_EC_DeviceReset in session %u", MTP_Handle->ptp.session_id);
      break;
      
    case PTP_EC_StorageInfoChanged :
      FUNC0( "EVT: PTP_EC_StorageInfoChanged in session %u", MTP_Handle->ptp.session_id);
      break;
      
    case PTP_EC_CaptureComplete :
      FUNC0( "EVT: PTP_EC_CaptureComplete in session %u", MTP_Handle->ptp.session_id);
      break;
      
    case PTP_EC_UnreportedStatus :
      FUNC0( "EVT: PTP_EC_UnreportedStatus in session %u", MTP_Handle->ptp.session_id);
      break;
      
    default :
      FUNC0( "Received unknown event in session %u", MTP_Handle->ptp.session_id);
      break;
  }
 
 FUNC1(phost, code, param1);
}