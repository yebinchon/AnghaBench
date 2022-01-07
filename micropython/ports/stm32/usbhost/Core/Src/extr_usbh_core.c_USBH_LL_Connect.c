
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_5__ {int is_connected; } ;
struct TYPE_6__ {scalar_t__ gState; int os_event; int (* pUser ) (TYPE_2__*,int ) ;TYPE_1__ device; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;


 scalar_t__ HOST_DEV_ATTACHED ;
 scalar_t__ HOST_DEV_WAIT_FOR_ATTACHMENT ;
 scalar_t__ HOST_IDLE ;
 int HOST_USER_CONNECTION ;
 int USBH_OK ;
 int USBH_PORT_EVENT ;
 int osMessagePut (int ,int ,int ) ;
 int stub1 (TYPE_2__*,int ) ;

USBH_StatusTypeDef USBH_LL_Connect (USBH_HandleTypeDef *phost)
{
  if(phost->gState == HOST_IDLE )
  {
    phost->device.is_connected = 1;
    phost->gState = HOST_IDLE ;

    if(phost->pUser != ((void*)0))
    {
      phost->pUser(phost, HOST_USER_CONNECTION);
    }
  }
  else if(phost->gState == HOST_DEV_WAIT_FOR_ATTACHMENT )
  {
    phost->gState = HOST_DEV_ATTACHED ;
  }




  return USBH_OK;
}
