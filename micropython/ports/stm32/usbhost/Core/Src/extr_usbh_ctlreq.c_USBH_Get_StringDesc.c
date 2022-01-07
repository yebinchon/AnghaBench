
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_5__ {int Data; } ;
struct TYPE_6__ {TYPE_1__ device; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;


 int USBH_GetDescriptor (TYPE_2__*,int,int,int ,int ) ;
 int USBH_OK ;
 int USBH_ParseStringDesc (int ,int*,int ) ;
 int USB_DESC_STRING ;
 int USB_REQ_RECIPIENT_DEVICE ;
 int USB_REQ_TYPE_STANDARD ;

USBH_StatusTypeDef USBH_Get_StringDesc(USBH_HandleTypeDef *phost,
                                uint8_t string_index,
                                uint8_t *buff,
                                uint16_t length)
{
  USBH_StatusTypeDef status;
  if((status = USBH_GetDescriptor(phost,
                                  USB_REQ_RECIPIENT_DEVICE | USB_REQ_TYPE_STANDARD,
                                  USB_DESC_STRING | string_index,
                                  phost->device.Data,
                                  length)) == USBH_OK)
  {

    USBH_ParseStringDesc(phost->device.Data,buff, length);
  }
  return status;
}
