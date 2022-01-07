
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_11__ {int Timer; TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_10__ {int state; int timer; int poll; int container; } ;
struct TYPE_12__ {int NotificationPipe; int NotificationEpSize; TYPE_2__ events; } ;
struct TYPE_9__ {TYPE_4__* pData; } ;
typedef TYPE_4__ MTP_HandleTypeDef ;


 int MTP_DecodeEvent (TYPE_3__*) ;


 int USBH_BUSY ;
 int USBH_InterruptReceiveData (TYPE_3__*,int *,int ,int ) ;
 int USBH_LL_GetURBState (TYPE_3__*,int ) ;
 int USBH_URB_DONE ;

__attribute__((used)) static USBH_StatusTypeDef USBH_MTP_Events (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef status = USBH_BUSY ;
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;


  switch(MTP_Handle->events.state)
  {
  case 128:
    if((phost->Timer & 1) == 0)
    {
      MTP_Handle->events.timer = phost->Timer;
      USBH_InterruptReceiveData(phost,
                                (uint8_t *)&(MTP_Handle->events.container),
                                MTP_Handle->NotificationEpSize,
                                MTP_Handle->NotificationPipe);


     MTP_Handle->events.state = 129 ;
    }
    break;
  case 129:
    if(USBH_LL_GetURBState(phost , MTP_Handle->NotificationPipe) == USBH_URB_DONE)
    {
      MTP_DecodeEvent(phost);
    }

    if(( phost->Timer - MTP_Handle->events.timer) >= MTP_Handle->events.poll)
    {
     MTP_Handle->events.timer = phost->Timer;

      USBH_InterruptReceiveData(phost,
                                (uint8_t *)&(MTP_Handle->events.container),
                                MTP_Handle->NotificationEpSize,
                                MTP_Handle->NotificationPipe);

    }
    break;

  default:
    break;
  }

  return status;
}
