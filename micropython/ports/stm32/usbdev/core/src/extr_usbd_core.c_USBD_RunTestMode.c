
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USBD_StatusTypeDef ;
typedef int USBD_HandleTypeDef ;


 int USBD_OK ;

USBD_StatusTypeDef USBD_RunTestMode (USBD_HandleTypeDef *pdev)
{
  return USBD_OK;
}
