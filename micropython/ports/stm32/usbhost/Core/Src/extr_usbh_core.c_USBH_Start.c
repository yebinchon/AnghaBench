
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USBH_StatusTypeDef ;
typedef int USBH_HandleTypeDef ;


 int TRUE ;
 int USBH_LL_DriverVBUS (int *,int ) ;
 int USBH_LL_Start (int *) ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_Start (USBH_HandleTypeDef *phost)
{

  USBH_LL_Start(phost);


  USBH_LL_DriverVBUS (phost, TRUE);

  return USBH_OK;
}
