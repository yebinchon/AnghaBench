
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
struct TYPE_10__ {scalar_t__ NotificationPipe; scalar_t__ DataInPipe; scalar_t__ DataOutPipe; } ;
struct TYPE_8__ {TYPE_3__* pData; } ;
typedef TYPE_3__ MTP_HandleTypeDef ;


 int USBH_ClosePipe (TYPE_2__*,scalar_t__) ;
 int USBH_FreePipe (TYPE_2__*,scalar_t__) ;
 int USBH_OK ;
 int USBH_free (TYPE_3__*) ;

USBH_StatusTypeDef USBH_MTP_InterfaceDeInit (USBH_HandleTypeDef *phost)
{
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;

  if (MTP_Handle->DataOutPipe)
  {
    USBH_ClosePipe(phost, MTP_Handle->DataOutPipe);
    USBH_FreePipe (phost, MTP_Handle->DataOutPipe);
    MTP_Handle->DataOutPipe = 0;
  }

  if (MTP_Handle->DataInPipe)
  {
    USBH_ClosePipe(phost, MTP_Handle->DataInPipe);
    USBH_FreePipe (phost, MTP_Handle->DataInPipe);
    MTP_Handle->DataInPipe = 0;
  }

  if (MTP_Handle->NotificationPipe)
  {
    USBH_ClosePipe(phost, MTP_Handle->NotificationPipe);
    USBH_FreePipe (phost, MTP_Handle->NotificationPipe);
    MTP_Handle->NotificationPipe = 0;
  }

  if(phost->pActiveClass->pData)
  {
    USBH_free (phost->pActiveClass->pData);
    phost->pActiveClass->pData = 0;
  }
  return USBH_OK;
}
