
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USBD_StatusTypeDef ;
struct TYPE_3__ {int dev_state; int dev_old_state; } ;
typedef TYPE_1__ USBD_HandleTypeDef ;


 int USBD_OK ;
 int USBD_STATE_SUSPENDED ;

USBD_StatusTypeDef USBD_LL_Suspend(USBD_HandleTypeDef *pdev)
{
  pdev->dev_old_state = pdev->dev_state;
  pdev->dev_state = USBD_STATE_SUSPENDED;
  return USBD_OK;
}
