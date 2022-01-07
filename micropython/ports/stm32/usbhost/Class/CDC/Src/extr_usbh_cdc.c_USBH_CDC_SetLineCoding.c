
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_6__ {scalar_t__ gState; int os_event; TYPE_1__* pActiveClass; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_7__ {int * pUserLineCoding; int state; } ;
struct TYPE_5__ {TYPE_3__* pData; } ;
typedef int CDC_LineCodingTypeDef ;
typedef TYPE_3__ CDC_HandleTypeDef ;


 int CDC_SET_LINE_CODING_STATE ;
 scalar_t__ HOST_CLASS ;
 int USBH_CLASS_EVENT ;
 int USBH_OK ;
 int osMessagePut (int ,int ,int ) ;

USBH_StatusTypeDef USBH_CDC_SetLineCoding(USBH_HandleTypeDef *phost, CDC_LineCodingTypeDef *linecodin)
{
  CDC_HandleTypeDef *CDC_Handle = phost->pActiveClass->pData;
  if(phost->gState == HOST_CLASS)
  {
    CDC_Handle->state = CDC_SET_LINE_CODING_STATE;
    CDC_Handle->pUserLineCoding = linecodin;




  }
  return USBH_OK;
}
