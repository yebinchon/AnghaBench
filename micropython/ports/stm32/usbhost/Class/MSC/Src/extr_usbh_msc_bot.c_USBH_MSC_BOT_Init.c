
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_12__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_5__ USBH_HandleTypeDef ;
struct TYPE_9__ {int Tag; int Signature; } ;
struct TYPE_10__ {TYPE_2__ field; } ;
struct TYPE_11__ {int cmd_state; int state; TYPE_3__ cbw; } ;
struct TYPE_13__ {TYPE_4__ hbot; } ;
struct TYPE_8__ {TYPE_6__* pData; } ;
typedef TYPE_6__ MSC_HandleTypeDef ;


 int BOT_CBW_SIGNATURE ;
 int BOT_CBW_TAG ;
 int BOT_CMD_SEND ;
 int BOT_SEND_CBW ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_MSC_BOT_Init(USBH_HandleTypeDef *phost)
{

  MSC_HandleTypeDef *MSC_Handle = phost->pActiveClass->pData;

  MSC_Handle->hbot.cbw.field.Signature = BOT_CBW_SIGNATURE;
  MSC_Handle->hbot.cbw.field.Tag = BOT_CBW_TAG;
  MSC_Handle->hbot.state = BOT_SEND_CBW;
  MSC_Handle->hbot.cmd_state = BOT_CMD_SEND;

  return USBH_OK;
}
