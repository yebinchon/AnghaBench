
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBD_StatusTypeDef ;
struct TYPE_6__ {TYPE_1__* pClass; } ;
typedef TYPE_2__ USBD_HandleTypeDef ;
struct TYPE_5__ {int (* DeInit ) (TYPE_2__*,int ) ;} ;


 int USBD_OK ;
 int stub1 (TYPE_2__*,int ) ;

USBD_StatusTypeDef USBD_ClrClassConfig(USBD_HandleTypeDef *pdev, uint8_t cfgidx)
{

  pdev->pClass->DeInit(pdev, cfgidx);
  return USBD_OK;
}
