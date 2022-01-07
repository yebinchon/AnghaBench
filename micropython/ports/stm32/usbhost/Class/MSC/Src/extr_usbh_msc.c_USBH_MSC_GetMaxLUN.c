
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_6__ {scalar_t__ gState; TYPE_1__* pActiveClass; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_7__ {scalar_t__ state; int max_lun; } ;
struct TYPE_5__ {TYPE_3__* pData; } ;
typedef TYPE_3__ MSC_HandleTypeDef ;


 scalar_t__ HOST_CLASS ;
 scalar_t__ MSC_IDLE ;

int8_t USBH_MSC_GetMaxLUN (USBH_HandleTypeDef *phost)
{
  MSC_HandleTypeDef *MSC_Handle = phost->pActiveClass->pData;

  if ((phost->gState != HOST_CLASS) && (MSC_Handle->state == MSC_IDLE))
  {
    return MSC_Handle->max_lun;
  }
  return 0xFF;
}
