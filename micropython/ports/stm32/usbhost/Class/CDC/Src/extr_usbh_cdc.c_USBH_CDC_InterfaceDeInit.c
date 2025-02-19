
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_13__ {TYPE_3__* pActiveClass; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_11__ {scalar_t__ OutPipe; scalar_t__ InPipe; } ;
struct TYPE_10__ {scalar_t__ NotifPipe; } ;
struct TYPE_14__ {TYPE_2__ DataItf; TYPE_1__ CommItf; } ;
struct TYPE_12__ {TYPE_5__* pData; } ;
typedef TYPE_5__ CDC_HandleTypeDef ;


 int USBH_ClosePipe (TYPE_4__*,scalar_t__) ;
 int USBH_FreePipe (TYPE_4__*,scalar_t__) ;
 int USBH_OK ;
 int USBH_free (TYPE_5__*) ;

USBH_StatusTypeDef USBH_CDC_InterfaceDeInit (USBH_HandleTypeDef *phost)
{
  CDC_HandleTypeDef *CDC_Handle = phost->pActiveClass->pData;

  if ( CDC_Handle->CommItf.NotifPipe)
  {
    USBH_ClosePipe(phost, CDC_Handle->CommItf.NotifPipe);
    USBH_FreePipe (phost, CDC_Handle->CommItf.NotifPipe);
    CDC_Handle->CommItf.NotifPipe = 0;
  }

  if ( CDC_Handle->DataItf.InPipe)
  {
    USBH_ClosePipe(phost, CDC_Handle->DataItf.InPipe);
    USBH_FreePipe (phost, CDC_Handle->DataItf.InPipe);
    CDC_Handle->DataItf.InPipe = 0;
  }

  if ( CDC_Handle->DataItf.OutPipe)
  {
    USBH_ClosePipe(phost, CDC_Handle->DataItf.OutPipe);
    USBH_FreePipe (phost, CDC_Handle->DataItf.OutPipe);
    CDC_Handle->DataItf.OutPipe = 0;
  }

  if(phost->pActiveClass->pData)
  {
    USBH_free (phost->pActiveClass->pData);
    phost->pActiveClass->pData = 0;
  }

  return USBH_OK;
}
