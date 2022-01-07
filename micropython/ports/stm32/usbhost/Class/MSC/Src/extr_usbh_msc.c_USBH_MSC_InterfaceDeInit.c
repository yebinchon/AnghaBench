
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_9__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_10__ {scalar_t__ InPipe; scalar_t__ OutPipe; } ;
struct TYPE_8__ {TYPE_3__* pData; } ;
typedef TYPE_3__ MSC_HandleTypeDef ;


 int USBH_ClosePipe (TYPE_2__*,scalar_t__) ;
 int USBH_FreePipe (TYPE_2__*,scalar_t__) ;
 int USBH_OK ;
 int USBH_free (TYPE_3__*) ;

USBH_StatusTypeDef USBH_MSC_InterfaceDeInit (USBH_HandleTypeDef *phost)
{
  MSC_HandleTypeDef *MSC_Handle = phost->pActiveClass->pData;

  if ( MSC_Handle->OutPipe)
  {
    USBH_ClosePipe(phost, MSC_Handle->OutPipe);
    USBH_FreePipe (phost, MSC_Handle->OutPipe);
    MSC_Handle->OutPipe = 0;
  }

  if ( MSC_Handle->InPipe)
  {
    USBH_ClosePipe(phost, MSC_Handle->InPipe);
    USBH_FreePipe (phost, MSC_Handle->InPipe);
    MSC_Handle->InPipe = 0;
  }

  if(phost->pActiveClass->pData)
  {
    USBH_free (phost->pActiveClass->pData);
    phost->pActiveClass->pData = 0;
  }

  return USBH_OK;
}
