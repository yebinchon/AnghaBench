
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
struct TYPE_5__ {scalar_t__ (* Init ) (TYPE_2__*,int ) ;} ;


 int USBD_FAIL ;
 int USBD_OK ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;

USBD_StatusTypeDef USBD_SetClassConfig(USBD_HandleTypeDef *pdev, uint8_t cfgidx)
{
  USBD_StatusTypeDef ret = USBD_FAIL;

  if(pdev->pClass != ((void*)0))
  {

    if(pdev->pClass->Init(pdev, cfgidx) == 0)
    {
      ret = USBD_OK;
    }
  }
  return ret;
}
