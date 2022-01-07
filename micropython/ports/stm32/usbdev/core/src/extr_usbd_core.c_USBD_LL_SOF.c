
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int USBD_StatusTypeDef ;
struct TYPE_6__ {scalar_t__ dev_state; TYPE_1__* pClass; } ;
typedef TYPE_2__ USBD_HandleTypeDef ;
struct TYPE_5__ {int (* SOF ) (TYPE_2__*) ;} ;


 int USBD_OK ;
 scalar_t__ USBD_STATE_CONFIGURED ;
 int stub1 (TYPE_2__*) ;

USBD_StatusTypeDef USBD_LL_SOF(USBD_HandleTypeDef *pdev)
{
  if(pdev->dev_state == USBD_STATE_CONFIGURED)
  {
    if(pdev->pClass->SOF != ((void*)0))
    {
      pdev->pClass->SOF(pdev);
    }
  }
  return USBD_OK;
}
