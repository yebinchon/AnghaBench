
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int USBD_StatusTypeDef ;
struct TYPE_7__ {int dev_config; TYPE_1__* pClass; } ;
typedef TYPE_2__ USBD_HandleTypeDef ;
struct TYPE_6__ {int (* DeInit ) (TYPE_2__*,int ) ;} ;


 int USBD_LL_Stop (TYPE_2__*) ;
 int USBD_OK ;
 int stub1 (TYPE_2__*,int ) ;

USBD_StatusTypeDef USBD_Stop (USBD_HandleTypeDef *pdev)
{

  pdev->pClass->DeInit(pdev, pdev->dev_config);


  USBD_LL_Stop(pdev);

  return USBD_OK;
}
