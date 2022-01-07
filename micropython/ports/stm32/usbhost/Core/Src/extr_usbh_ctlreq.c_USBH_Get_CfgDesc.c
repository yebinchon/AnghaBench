
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_5__ {int CfgDesc; int * Data; int * CfgDesc_Raw; } ;
struct TYPE_6__ {TYPE_1__ device; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;


 int USBH_GetDescriptor (TYPE_2__*,int,int ,int *,int ) ;
 int USBH_OK ;
 int USBH_ParseCfgDesc (int *,int *,int ) ;
 int USB_DESC_CONFIGURATION ;
 int USB_REQ_RECIPIENT_DEVICE ;
 int USB_REQ_TYPE_STANDARD ;

USBH_StatusTypeDef USBH_Get_CfgDesc(USBH_HandleTypeDef *phost,
                             uint16_t length)

{
  USBH_StatusTypeDef status;
  uint8_t *pData;



  pData = phost->device.Data;

  if((status = USBH_GetDescriptor(phost,
                                  USB_REQ_RECIPIENT_DEVICE | USB_REQ_TYPE_STANDARD,
                                  USB_DESC_CONFIGURATION,
                                  pData,
                                  length)) == USBH_OK)
  {


    USBH_ParseCfgDesc (&phost->device.CfgDesc,
                       pData,
                       length);

  }
  return status;
}
