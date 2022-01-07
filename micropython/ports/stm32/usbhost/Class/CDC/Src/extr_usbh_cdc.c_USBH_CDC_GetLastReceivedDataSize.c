
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {scalar_t__ gState; TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_8__ {int InPipe; } ;
struct TYPE_10__ {TYPE_2__ DataItf; } ;
struct TYPE_7__ {TYPE_4__* pData; } ;
typedef TYPE_4__ CDC_HandleTypeDef ;


 scalar_t__ HOST_CLASS ;
 int USBH_LL_GetLastXferSize (TYPE_3__*,int ) ;

uint16_t USBH_CDC_GetLastReceivedDataSize(USBH_HandleTypeDef *phost)
{
  CDC_HandleTypeDef *CDC_Handle = phost->pActiveClass->pData;

  if(phost->gState == HOST_CLASS)
  {
    return USBH_LL_GetLastXferSize(phost, CDC_Handle->DataItf.InPipe);;
  }
  else
  {
    return 0;
  }
}
