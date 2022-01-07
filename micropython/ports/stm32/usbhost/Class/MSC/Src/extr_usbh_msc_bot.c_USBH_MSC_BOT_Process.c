
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_URBStateTypeDef ;
typedef int USBH_StatusTypeDef ;
struct TYPE_22__ {int os_event; TYPE_2__* pActiveClass; } ;
typedef TYPE_6__ USBH_HandleTypeDef ;
struct TYPE_17__ {int data; } ;
struct TYPE_19__ {int Flags; int DataTransferLength; int LUN; } ;
struct TYPE_20__ {TYPE_3__ field; int data; } ;
struct TYPE_21__ {int state; int cmd_state; TYPE_1__ csw; int pbuf; TYPE_4__ cbw; } ;
struct TYPE_23__ {TYPE_5__ hbot; int InPipe; int OutPipe; int OutEpSize; int InEpSize; } ;
struct TYPE_18__ {TYPE_7__* pData; } ;
typedef TYPE_7__ MSC_HandleTypeDef ;
typedef int BOT_CSWStatusTypeDef ;


 int BOT_CBW_LENGTH ;
 int BOT_CMD_SEND ;
 int BOT_CSW_CMD_FAILED ;
 int BOT_CSW_CMD_PASSED ;
 int BOT_CSW_LENGTH ;




 int BOT_DIR_IN ;
 int BOT_DIR_OUT ;







 int USBH_BUSY ;
 int USBH_BulkReceiveData (TYPE_6__*,int ,int ,int ) ;
 int USBH_BulkSendData (TYPE_6__*,int ,int ,int ,int) ;
 int USBH_FAIL ;
 int USBH_LL_GetToggle (TYPE_6__*,int ) ;
 int USBH_LL_GetURBState (TYPE_6__*,int ) ;
 int USBH_LL_SetToggle (TYPE_6__*,int ,int ) ;
 int USBH_MSC_BOT_Abort (TYPE_6__*,int ,int ) ;
 int USBH_MSC_BOT_REQ_Reset (TYPE_6__*) ;
 int USBH_MSC_DecodeCSW (TYPE_6__*) ;
 int USBH_OK ;
 int USBH_UNRECOVERED_ERROR ;
 int USBH_URB_DONE ;
 int USBH_URB_EVENT ;
 int USBH_URB_IDLE ;
 int USBH_URB_NOTREADY ;
 int USBH_URB_STALL ;
 int USB_D2H ;
 int USB_REQ_DIR_MASK ;
 int osMessagePut (int ,int ,int ) ;

USBH_StatusTypeDef USBH_MSC_BOT_Process (USBH_HandleTypeDef *phost, uint8_t lun)
{
  USBH_StatusTypeDef status = USBH_BUSY;
  USBH_StatusTypeDef error = USBH_BUSY;
  BOT_CSWStatusTypeDef CSW_Status = BOT_CSW_CMD_FAILED;
  USBH_URBStateTypeDef URB_Status = USBH_URB_IDLE;
  MSC_HandleTypeDef *MSC_Handle = phost->pActiveClass->pData;
  uint8_t toggle = 0;

  switch (MSC_Handle->hbot.state)
  {
  case 130:
    MSC_Handle->hbot.cbw.field.LUN = lun;
    MSC_Handle->hbot.state = 129;
    USBH_BulkSendData (phost,
                       MSC_Handle->hbot.cbw.data,
                       BOT_CBW_LENGTH,
                       MSC_Handle->OutPipe,
                       1);

    break;

  case 129:

    URB_Status = USBH_LL_GetURBState(phost, MSC_Handle->OutPipe);

    if(URB_Status == USBH_URB_DONE)
    {
      if ( MSC_Handle->hbot.cbw.field.DataTransferLength != 0 )
      {

        if (((MSC_Handle->hbot.cbw.field.Flags) & USB_REQ_DIR_MASK) == USB_D2H)
        {

          MSC_Handle->hbot.state = 138;
        }
        else
        {

          MSC_Handle->hbot.state = 136;
        }
      }

      else
      {
        MSC_Handle->hbot.state = 132;
      }




    }
    else if(URB_Status == USBH_URB_NOTREADY)
    {

      MSC_Handle->hbot.state = 130;



    }
    else if(URB_Status == USBH_URB_STALL)
    {
      MSC_Handle->hbot.state = 133;



    }
    break;

  case 138:

    USBH_BulkReceiveData (phost,
                          MSC_Handle->hbot.pbuf,
                          MSC_Handle->InEpSize ,
                          MSC_Handle->InPipe);

    MSC_Handle->hbot.state = 137;

    break;

  case 137:

    URB_Status = USBH_LL_GetURBState(phost, MSC_Handle->InPipe);

    if(URB_Status == USBH_URB_DONE)
    {

      if(MSC_Handle->hbot.cbw.field.DataTransferLength > MSC_Handle->InEpSize)
      {
          MSC_Handle->hbot.pbuf += MSC_Handle->InEpSize;
          MSC_Handle->hbot.cbw.field.DataTransferLength -= MSC_Handle->InEpSize;
      }
      else
      {
        MSC_Handle->hbot.cbw.field.DataTransferLength = 0;
      }


      if(MSC_Handle->hbot.cbw.field.DataTransferLength > 0)
      {

        USBH_BulkReceiveData (phost,
                              MSC_Handle->hbot.pbuf,
                              MSC_Handle->InEpSize ,
                              MSC_Handle->InPipe);

      }
      else
      {

        MSC_Handle->hbot.state = 132;



      }
    }
    else if(URB_Status == USBH_URB_STALL)
    {

      MSC_Handle->hbot.state = 134;
    }
    break;

  case 136:

    USBH_BulkSendData (phost,
                       MSC_Handle->hbot.pbuf,
                       MSC_Handle->OutEpSize ,
                       MSC_Handle->OutPipe,
                       1);


    MSC_Handle->hbot.state = 135;
    break;

  case 135:
    URB_Status = USBH_LL_GetURBState(phost, MSC_Handle->OutPipe);

    if(URB_Status == USBH_URB_DONE)
    {

      if(MSC_Handle->hbot.cbw.field.DataTransferLength > MSC_Handle->OutEpSize)
      {
          MSC_Handle->hbot.pbuf += MSC_Handle->OutEpSize;
          MSC_Handle->hbot.cbw.field.DataTransferLength -= MSC_Handle->OutEpSize;
      }
      else
      {
        MSC_Handle->hbot.cbw.field.DataTransferLength = 0;
      }


      if(MSC_Handle->hbot.cbw.field.DataTransferLength > 0)
      {
        USBH_BulkSendData (phost,
                           MSC_Handle->hbot.pbuf,
                           MSC_Handle->OutEpSize ,
                           MSC_Handle->OutPipe,
                           1);
      }
      else
      {

        MSC_Handle->hbot.state = 132;
      }



    }

    else if(URB_Status == USBH_URB_NOTREADY)
    {

      MSC_Handle->hbot.state = 136;



    }

    else if(URB_Status == USBH_URB_STALL)
    {
      MSC_Handle->hbot.state = 133;
    }
    break;

  case 132:

    USBH_BulkReceiveData (phost,
                          MSC_Handle->hbot.csw.data,
                          BOT_CSW_LENGTH ,
                          MSC_Handle->InPipe);

    MSC_Handle->hbot.state = 131;
    break;

  case 131:

    URB_Status = USBH_LL_GetURBState(phost, MSC_Handle->InPipe);


    if(URB_Status == USBH_URB_DONE)
    {
      MSC_Handle->hbot.state = 130;
      MSC_Handle->hbot.cmd_state = BOT_CMD_SEND;
      CSW_Status = USBH_MSC_DecodeCSW(phost);

      if(CSW_Status == BOT_CSW_CMD_PASSED)
      {
        status = USBH_OK;
      }
      else
      {
        status = USBH_FAIL;
      }



    }
    else if(URB_Status == USBH_URB_STALL)
    {
      MSC_Handle->hbot.state = 134;



    }
    break;

  case 134:
    error = USBH_MSC_BOT_Abort(phost, lun, BOT_DIR_IN);

    if (error == USBH_OK)
    {
      MSC_Handle->hbot.state = 132;
    }
    else if (error == USBH_UNRECOVERED_ERROR)
    {

      MSC_Handle->hbot.state = 128;
    }
    break;

  case 133:
    error = USBH_MSC_BOT_Abort(phost, lun, BOT_DIR_OUT);

    if ( error == USBH_OK)
    {

      toggle = USBH_LL_GetToggle(phost, MSC_Handle->OutPipe);
      USBH_LL_SetToggle(phost, MSC_Handle->OutPipe, 1- toggle);
      USBH_LL_SetToggle(phost, MSC_Handle->InPipe, 0);
      MSC_Handle->hbot.state = 134;
    }
    else if (error == USBH_UNRECOVERED_ERROR)
    {
      MSC_Handle->hbot.state = 128;
    }
    break;


  case 128:
    status = USBH_MSC_BOT_REQ_Reset(phost);
    if ( status == USBH_OK)
    {
      MSC_Handle->hbot.state = 130;
    }
    break;

  default:
    break;
  }
  return status;
}
