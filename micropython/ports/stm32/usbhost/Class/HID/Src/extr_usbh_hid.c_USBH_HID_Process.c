
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_12__ {int Timer; int os_event; TYPE_1__* pActiveClass; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_13__ {int state; int timer; int DataReady; int ep_addr; int InPipe; int length; int pData; int fifo; int (* Init ) (TYPE_2__*) ;} ;
struct TYPE_11__ {TYPE_3__* pData; } ;
typedef TYPE_3__ HID_HandleTypeDef ;







 int USBH_ClrFeature (TYPE_2__*,int ) ;
 int USBH_HID_EventCallback (TYPE_2__*) ;
 int USBH_HID_GetReport (TYPE_2__*,int,int ,int ,int ) ;
 int USBH_InterruptReceiveData (TYPE_2__*,int ,int ,int ) ;
 int USBH_LL_GetURBState (TYPE_2__*,int ) ;
 int USBH_OK ;
 int USBH_URB_DONE ;
 int USBH_URB_EVENT ;
 int USBH_URB_STALL ;
 int fifo_write (int *,int ,int ) ;
 int osMessagePut (int ,int ,int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static USBH_StatusTypeDef USBH_HID_Process(USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef status = USBH_OK;
  HID_HandleTypeDef *HID_Handle = phost->pActiveClass->pData;

  switch (HID_Handle->state)
  {
  case 130:
    HID_Handle->Init(phost);
  case 131:
    if(USBH_HID_GetReport (phost,
                           0x01,
                            0,
                            HID_Handle->pData,
                            HID_Handle->length) == USBH_OK)
    {

      fifo_write(&HID_Handle->fifo, HID_Handle->pData, HID_Handle->length);
      HID_Handle->state = 128;
    }

    break;

  case 128:


    if(phost->Timer & 1)
    {
      HID_Handle->state = 132;
    }



    break;

  case 132:

    USBH_InterruptReceiveData(phost,
                              HID_Handle->pData,
                              HID_Handle->length,
                              HID_Handle->InPipe);

    HID_Handle->state = 129;
    HID_Handle->timer = phost->Timer;
    HID_Handle->DataReady = 0;
    break;

  case 129:

    if(USBH_LL_GetURBState(phost , HID_Handle->InPipe) == USBH_URB_DONE)
    {
      if(HID_Handle->DataReady == 0)
      {
        fifo_write(&HID_Handle->fifo, HID_Handle->pData, HID_Handle->length);
        HID_Handle->DataReady = 1;
        USBH_HID_EventCallback(phost);



      }
    }
    else if(USBH_LL_GetURBState(phost , HID_Handle->InPipe) == USBH_URB_STALL)
    {


      if(USBH_ClrFeature(phost,
                         HID_Handle->ep_addr) == USBH_OK)
      {

        HID_Handle->state = 132;
      }
    }


    break;

  default:
    break;
  }
  return status;
}
