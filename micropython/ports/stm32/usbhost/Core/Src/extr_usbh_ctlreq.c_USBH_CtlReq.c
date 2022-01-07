
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_5__ {int state; int length; int * buff; } ;
struct TYPE_6__ {int RequestState; TYPE_1__ Control; int os_event; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;




 int CTRL_IDLE ;
 int CTRL_SETUP ;
 int USBH_BUSY ;
 int USBH_CONTROL_EVENT ;
 int USBH_FAIL ;
 int USBH_HandleControl (TYPE_2__*) ;
 int USBH_OK ;
 int osMessagePut (int ,int ,int ) ;

USBH_StatusTypeDef USBH_CtlReq (USBH_HandleTypeDef *phost,
                             uint8_t *buff,
                             uint16_t length)
{
  USBH_StatusTypeDef status;
  status = USBH_BUSY;

  switch (phost->RequestState)
  {
  case 129:

    phost->Control.buff = buff;
    phost->Control.length = length;
    phost->Control.state = CTRL_SETUP;
    phost->RequestState = 128;
    status = USBH_BUSY;



    break;

  case 128:
    status = USBH_HandleControl(phost);
     if (status == USBH_OK)
    {

      phost->RequestState = 129;
      phost->Control.state =CTRL_IDLE;
      status = USBH_OK;
    }
    else if (status == USBH_FAIL)
    {

      phost->RequestState = 129;
      status = USBH_FAIL;
    }
    break;

  default:
    break;
  }
  return status;
}
