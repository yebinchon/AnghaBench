
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int USBD_StatusTypeDef ;
struct TYPE_6__ {int dev_config; TYPE_1__* pClass; int dev_state; } ;
typedef TYPE_2__ USBD_HandleTypeDef ;
struct TYPE_5__ {int (* DeInit ) (TYPE_2__*,int ) ;} ;


 int USBD_OK ;
 int USBD_STATE_DEFAULT ;
 int stub1 (TYPE_2__*,int ) ;

USBD_StatusTypeDef USBD_LL_DevDisconnected(USBD_HandleTypeDef *pdev)
{

  pdev->dev_state = USBD_STATE_DEFAULT;
  pdev->pClass->DeInit(pdev, pdev->dev_config);

  return USBD_OK;
}
