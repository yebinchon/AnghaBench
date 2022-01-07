
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_6__ {int os_event; } ;
typedef TYPE_1__ USBH_HandleTypeDef ;


 int DeInitStateMachine (TYPE_1__*) ;
 int USBH_Delay (int) ;
 int USBH_OK ;
 int USBH_PORT_EVENT ;
 int USBH_Start (TYPE_1__*) ;
 int USBH_Stop (TYPE_1__*) ;
 int osMessagePut (int ,int ,int ) ;

USBH_StatusTypeDef USBH_ReEnumerate (USBH_HandleTypeDef *phost)
{

  USBH_Stop(phost);


  USBH_Delay(200);


  DeInitStateMachine(phost);


  USBH_Start(phost);




  return USBH_OK;
}
