
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_URBStateTypeDef ;
typedef int USBH_StatusTypeDef ;
struct TYPE_12__ {int w; } ;
struct TYPE_13__ {int bmRequestType; TYPE_1__ wLength; } ;
struct TYPE_14__ {TYPE_2__ b; scalar_t__ d8; } ;
struct TYPE_15__ {int state; int errorcount; int pipe_out; int timer; int pipe_in; int length; int buff; TYPE_3__ setup; } ;
struct TYPE_16__ {TYPE_4__ Control; int RequestState; int os_event; int Timer; } ;
typedef TYPE_5__ USBH_HandleTypeDef ;


 int CMD_SEND ;
 void* CTRL_COMPLETE ;







 int CTRL_STALLED ;




 int USBH_BUSY ;
 int USBH_CONTROL_EVENT ;
 int USBH_CtlReceiveData (TYPE_5__*,int ,int ,int ) ;
 int USBH_CtlSendData (TYPE_5__*,int ,int ,int ,int) ;
 int USBH_CtlSendSetup (TYPE_5__*,int*,int ) ;
 int USBH_ErrLog (char*) ;
 int USBH_FAIL ;
 int USBH_LL_GetURBState (TYPE_5__*,int ) ;
 int USBH_LL_Stop (TYPE_5__*) ;
 int USBH_MAX_ERROR_COUNT ;
 int USBH_NOT_SUPPORTED ;
 int USBH_OK ;
 int USBH_URB_DONE ;
 int USBH_URB_ERROR ;
 int USBH_URB_IDLE ;
 int USBH_URB_NOTREADY ;
 int USBH_URB_STALL ;
 int USB_D2H ;
 int USB_REQ_DIR_MASK ;
 int osMessagePut (int ,int ,int ) ;

__attribute__((used)) static USBH_StatusTypeDef USBH_HandleControl (USBH_HandleTypeDef *phost)
{
  uint8_t direction;
  USBH_StatusTypeDef status = USBH_BUSY;
  USBH_URBStateTypeDef URB_Status = USBH_URB_IDLE;

  switch (phost->Control.state)
  {
  case 133:

    USBH_CtlSendSetup (phost,
                    (uint8_t *)phost->Control.setup.d8 ,
                    phost->Control.pipe_out);

    phost->Control.state = 132;
    break;

  case 132:

    URB_Status = USBH_LL_GetURBState(phost, phost->Control.pipe_out);

    if(URB_Status == USBH_URB_DONE)
    {
      direction = (phost->Control.setup.b.bmRequestType & USB_REQ_DIR_MASK);


      if (phost->Control.setup.b.wLength.w != 0 )
      {
        if (direction == USB_D2H)
        {

          phost->Control.state = 138;
        }
        else
        {

          phost->Control.state = 136;
        }
      }

      else
      {

        if (direction == USB_D2H)
        {

          phost->Control.state = 129;
        }
        else
        {

          phost->Control.state = 131;
        }
      }



    }
    else if(URB_Status == USBH_URB_ERROR)
    {
      phost->Control.state = 134;



    }
    break;

  case 138:

     phost->Control.timer = phost->Timer;
    USBH_CtlReceiveData(phost,
                        phost->Control.buff,
                        phost->Control.length,
                        phost->Control.pipe_in);

    phost->Control.state = 137;
    break;

  case 137:

    URB_Status = USBH_LL_GetURBState(phost , phost->Control.pipe_in);


    if (URB_Status == USBH_URB_DONE)
    {
      phost->Control.state = 129;



    }


    if (URB_Status == USBH_URB_STALL)
    {

      status = USBH_NOT_SUPPORTED;



    }
    else if (URB_Status == USBH_URB_ERROR)
    {

      phost->Control.state = 134;



    }
    break;

  case 136:

    USBH_CtlSendData (phost,
                      phost->Control.buff,
                      phost->Control.length ,
                      phost->Control.pipe_out,
                      1);
     phost->Control.timer = phost->Timer;
    phost->Control.state = 135;
    break;

  case 135:

    URB_Status = USBH_LL_GetURBState(phost , phost->Control.pipe_out);

    if (URB_Status == USBH_URB_DONE)
    {
      phost->Control.state = 131;



    }


    else if (URB_Status == USBH_URB_STALL)
    {

      phost->Control.state = CTRL_STALLED;
      status = USBH_NOT_SUPPORTED;



    }
    else if (URB_Status == USBH_URB_NOTREADY)
    {

      phost->Control.state = 136;




    }
    else if (URB_Status == USBH_URB_ERROR)
    {

      phost->Control.state = 134;
      status = USBH_FAIL;




    }
    break;


  case 131:

    USBH_CtlReceiveData (phost,
                         0,
                         0,
                         phost->Control.pipe_in);
    phost->Control.timer = phost->Timer;
    phost->Control.state = 130;

    break;

  case 130:

    URB_Status = USBH_LL_GetURBState(phost , phost->Control.pipe_in);

    if ( URB_Status == USBH_URB_DONE)
    {
      phost->Control.state = CTRL_COMPLETE;
      status = USBH_OK;



    }

    else if (URB_Status == USBH_URB_ERROR)
    {
      phost->Control.state = 134;



    }
     else if(URB_Status == USBH_URB_STALL)
    {

      status = USBH_NOT_SUPPORTED;




    }
    break;

  case 129:
    USBH_CtlSendData (phost,
                      0,
                      0,
                      phost->Control.pipe_out,
                      1);
     phost->Control.timer = phost->Timer;
    phost->Control.state = 128;
    break;

  case 128:

    URB_Status = USBH_LL_GetURBState(phost , phost->Control.pipe_out);
    if (URB_Status == USBH_URB_DONE)
    {
      status = USBH_OK;
      phost->Control.state = CTRL_COMPLETE;




    }
    else if (URB_Status == USBH_URB_NOTREADY)
    {
      phost->Control.state = 129;




    }
    else if (URB_Status == USBH_URB_ERROR)
    {
      phost->Control.state = 134;




    }
    break;

  case 134:
    if (++ phost->Control.errorcount <= USBH_MAX_ERROR_COUNT)
    {

      USBH_LL_Stop(phost);


      phost->Control.state = 133;
      phost->RequestState = CMD_SEND;
    }
    else
    {
      phost->Control.errorcount = 0;
      USBH_ErrLog("Control error");
      status = USBH_FAIL;

    }
    break;

  default:
    break;
  }
  return status;
}
