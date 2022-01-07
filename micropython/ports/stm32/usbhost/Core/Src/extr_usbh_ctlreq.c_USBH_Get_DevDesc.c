
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_5__ {int Data; int DevDesc; } ;
struct TYPE_6__ {TYPE_1__ device; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;


 int USBH_GetDescriptor (TYPE_2__*,int,int ,int ,int ) ;
 int USBH_OK ;
 int USBH_ParseDevDesc (int *,int ,int ) ;
 int USB_DESC_DEVICE ;
 int USB_REQ_RECIPIENT_DEVICE ;
 int USB_REQ_TYPE_STANDARD ;

USBH_StatusTypeDef USBH_Get_DevDesc(USBH_HandleTypeDef *phost, uint8_t length)
{
  USBH_StatusTypeDef status;

  if((status = USBH_GetDescriptor(phost,
                                  USB_REQ_RECIPIENT_DEVICE | USB_REQ_TYPE_STANDARD,
                                  USB_DESC_DEVICE,
                                  phost->device.Data,
                                  length)) == USBH_OK)
  {

    USBH_ParseDevDesc(&phost->device.DevDesc, phost->device.Data, length);
  }
  return status;
}
