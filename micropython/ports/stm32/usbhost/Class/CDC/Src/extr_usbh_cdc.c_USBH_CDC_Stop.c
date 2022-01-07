
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_11__ {scalar_t__ gState; TYPE_1__* pActiveClass; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_10__ {int OutPipe; int InPipe; } ;
struct TYPE_9__ {int NotifPipe; } ;
struct TYPE_12__ {TYPE_3__ DataItf; TYPE_2__ CommItf; int state; } ;
struct TYPE_8__ {TYPE_5__* pData; } ;
typedef TYPE_5__ CDC_HandleTypeDef ;


 int CDC_IDLE_STATE ;
 scalar_t__ HOST_CLASS ;
 int USBH_ClosePipe (TYPE_4__*,int ) ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_CDC_Stop(USBH_HandleTypeDef *phost)
{
  CDC_HandleTypeDef *CDC_Handle = phost->pActiveClass->pData;

  if(phost->gState == HOST_CLASS)
  {
    CDC_Handle->state = CDC_IDLE_STATE;

    USBH_ClosePipe(phost, CDC_Handle->CommItf.NotifPipe);
    USBH_ClosePipe(phost, CDC_Handle->DataItf.InPipe);
    USBH_ClosePipe(phost, CDC_Handle->DataItf.OutPipe);
  }
  return USBH_OK;
}
