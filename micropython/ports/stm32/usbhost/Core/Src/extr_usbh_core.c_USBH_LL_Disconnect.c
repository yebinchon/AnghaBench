
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_10__ {scalar_t__ is_connected; } ;
struct TYPE_9__ {int pipe_out; int pipe_in; } ;
struct TYPE_11__ {int os_event; int gState; int (* pUser ) (TYPE_3__*,int ) ;TYPE_2__ device; TYPE_1__ Control; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;


 int HOST_DEV_DISCONNECTED ;
 int HOST_USER_DISCONNECTION ;
 int USBH_FreePipe (TYPE_3__*,int ) ;
 int USBH_LL_Start (TYPE_3__*) ;
 int USBH_LL_Stop (TYPE_3__*) ;
 int USBH_OK ;
 int USBH_PORT_EVENT ;
 int USBH_UsrLog (char*) ;
 int osMessagePut (int ,int ,int ) ;
 int stub1 (TYPE_3__*,int ) ;

USBH_StatusTypeDef USBH_LL_Disconnect (USBH_HandleTypeDef *phost)
{

  USBH_LL_Stop(phost);


  USBH_FreePipe (phost, phost->Control.pipe_in);
  USBH_FreePipe (phost, phost->Control.pipe_out);

  phost->device.is_connected = 0;

  if(phost->pUser != ((void*)0))
  {
    phost->pUser(phost, HOST_USER_DISCONNECTION);
  }
  USBH_UsrLog("USB Device disconnected");


  USBH_LL_Start(phost);

  phost->gState = HOST_DEV_DISCONNECTED;





  return USBH_OK;
}
