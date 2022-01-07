
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_9__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_10__ {int InPipe; int OutPipe; } ;
struct TYPE_8__ {TYPE_3__* pData; } ;
typedef TYPE_3__ HID_HandleTypeDef ;


 int USBH_ClosePipe (TYPE_2__*,int) ;
 int USBH_FreePipe (TYPE_2__*,int) ;
 int USBH_OK ;
 int USBH_free (TYPE_3__*) ;

USBH_StatusTypeDef USBH_HID_InterfaceDeInit (USBH_HandleTypeDef *phost )
{
  HID_HandleTypeDef *HID_Handle = phost->pActiveClass->pData;

  if(HID_Handle->InPipe != 0x00)
  {
    USBH_ClosePipe (phost, HID_Handle->InPipe);
    USBH_FreePipe (phost, HID_Handle->InPipe);
    HID_Handle->InPipe = 0;
  }

  if(HID_Handle->OutPipe != 0x00)
  {
    USBH_ClosePipe(phost, HID_Handle->OutPipe);
    USBH_FreePipe (phost, HID_Handle->OutPipe);
    HID_Handle->OutPipe = 0;
  }

  if(phost->pActiveClass->pData)
  {
    USBH_free (phost->pActiveClass->pData);
  }

  return USBH_OK;
}
