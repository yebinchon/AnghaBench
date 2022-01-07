
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USBD_StatusTypeDef ;
struct TYPE_3__ {int const* pClass; } ;
typedef TYPE_1__ USBD_HandleTypeDef ;
typedef int USBD_ClassTypeDef ;


 int USBD_FAIL ;
 int USBD_OK ;

USBD_StatusTypeDef USBD_RegisterClass(USBD_HandleTypeDef *pdev, const USBD_ClassTypeDef *pclass)
{
  USBD_StatusTypeDef status = USBD_OK;
  if(pclass != 0)
  {

    pdev->pClass = pclass;
    status = USBD_OK;
  }
  else
  {
    status = USBD_FAIL;
  }

  return status;
}
