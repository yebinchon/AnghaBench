
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USBD_StatusTypeDef ;
typedef int USBD_HandleTypeDef ;


 int USBD_LL_Start (int *) ;
 int USBD_OK ;

USBD_StatusTypeDef USBD_Start (USBD_HandleTypeDef *pdev)
{


  USBD_LL_Start(pdev);

  return USBD_OK;
}
