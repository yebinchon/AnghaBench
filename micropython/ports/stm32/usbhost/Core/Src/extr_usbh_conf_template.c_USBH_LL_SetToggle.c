
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
typedef int USBH_HandleTypeDef ;


 int USBH_OK ;

USBH_StatusTypeDef USBH_LL_SetToggle (USBH_HandleTypeDef *phost, uint8_t pipe, uint8_t toggle)
{

  return USBH_OK;
}
