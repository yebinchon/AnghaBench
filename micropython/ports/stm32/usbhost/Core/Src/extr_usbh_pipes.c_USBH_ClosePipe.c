
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
typedef int USBH_HandleTypeDef ;


 int USBH_LL_ClosePipe (int *,int ) ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_ClosePipe (USBH_HandleTypeDef *phost,
                            uint8_t pipe_num)
{

  USBH_LL_ClosePipe(phost, pipe_num);

  return USBH_OK;

}
