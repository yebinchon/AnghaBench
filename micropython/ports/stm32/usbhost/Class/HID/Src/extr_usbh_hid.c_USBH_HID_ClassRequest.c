
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_13__ {int Data; } ;
struct TYPE_14__ {int (* pUser ) (TYPE_3__*,int ) ;TYPE_2__ device; TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_16__ {int wItemLength; } ;
struct TYPE_15__ {int ctl_state; TYPE_8__ HID_Desc; } ;
struct TYPE_12__ {TYPE_4__* pData; } ;
typedef TYPE_4__ HID_HandleTypeDef ;
 int HOST_USER_CLASS_ACTIVE ;
 int USBH_BUSY ;
 int USBH_HID_GetHIDDescriptor (TYPE_3__*,int ) ;
 int USBH_HID_GetHIDReportDescriptor (TYPE_3__*,int ) ;
 int USBH_HID_ParseHIDDesc (TYPE_8__*,int ) ;
 int USBH_HID_SetIdle (TYPE_3__*,int ,int ) ;
 int USBH_HID_SetProtocol (TYPE_3__*,int ) ;
 int USBH_NOT_SUPPORTED ;
 int USBH_OK ;
 int USB_HID_DESC_SIZE ;
 int stub1 (TYPE_3__*,int ) ;

__attribute__((used)) static USBH_StatusTypeDef USBH_HID_ClassRequest(USBH_HandleTypeDef *phost)
{

  USBH_StatusTypeDef status = USBH_BUSY;
  USBH_StatusTypeDef classReqStatus = USBH_BUSY;
  HID_HandleTypeDef *HID_Handle = phost->pActiveClass->pData;


  switch (HID_Handle->ctl_state)
  {
  case 130:
  case 133:


    if (USBH_HID_GetHIDDescriptor (phost, USB_HID_DESC_SIZE)== USBH_OK)
    {

      USBH_HID_ParseHIDDesc(&HID_Handle->HID_Desc, phost->device.Data);
      HID_Handle->ctl_state = 132;
    }

    break;
  case 132:



    if (USBH_HID_GetHIDReportDescriptor(phost, HID_Handle->HID_Desc.wItemLength) == USBH_OK)
    {


      HID_Handle->ctl_state = 129;
    }

    break;

  case 129:

    classReqStatus = USBH_HID_SetIdle (phost, 0, 0);


    if (classReqStatus == USBH_OK)
    {
      HID_Handle->ctl_state = 128;
    }
    else if(classReqStatus == USBH_NOT_SUPPORTED)
    {
      HID_Handle->ctl_state = 128;
    }
    break;

  case 128:

    if (USBH_HID_SetProtocol (phost, 0) == USBH_OK)
    {
      HID_Handle->ctl_state = 131;


      phost->pUser(phost, HOST_USER_CLASS_ACTIVE);
      status = USBH_OK;
    }
    break;

  case 131:
  default:
    break;
  }

  return status;
}
