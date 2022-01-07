
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USBD_StatusTypeDef ;
struct TYPE_3__ {int dev_old_state; int dev_state; } ;
typedef TYPE_1__ USBD_HandleTypeDef ;


 int USBD_OK ;

USBD_StatusTypeDef USBD_LL_Resume(USBD_HandleTypeDef *pdev)
{
  pdev->dev_state = pdev->dev_old_state;
  return USBD_OK;
}
