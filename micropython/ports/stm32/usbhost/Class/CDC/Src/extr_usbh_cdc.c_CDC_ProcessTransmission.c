
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int USBH_URBStateTypeDef ;
struct TYPE_11__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_10__ {int OutEpSize; int OutPipe; } ;
struct TYPE_12__ {int data_tx_state; int TxDataLength; TYPE_2__ DataItf; int pTxData; } ;
struct TYPE_9__ {TYPE_4__* pData; } ;
typedef TYPE_4__ CDC_HandleTypeDef ;


 int CDC_IDLE ;


 int USBH_BulkSendData (TYPE_3__*,int ,int ,int ,int) ;
 int USBH_CDC_TransmitCallback (TYPE_3__*) ;
 int USBH_LL_GetURBState (TYPE_3__*,int ) ;
 int USBH_URB_DONE ;
 int USBH_URB_IDLE ;
 int USBH_URB_NOTREADY ;

__attribute__((used)) static void CDC_ProcessTransmission(USBH_HandleTypeDef *phost)
{
  CDC_HandleTypeDef *CDC_Handle = phost->pActiveClass->pData;
  USBH_URBStateTypeDef URB_Status = USBH_URB_IDLE;

  switch(CDC_Handle->data_tx_state)
  {

  case 129:
    if(CDC_Handle->TxDataLength > CDC_Handle->DataItf.OutEpSize)
    {
      USBH_BulkSendData (phost,
                         CDC_Handle->pTxData,
                         CDC_Handle->DataItf.OutEpSize,
                         CDC_Handle->DataItf.OutPipe,
                         1);
    }
    else
    {
      USBH_BulkSendData (phost,
                         CDC_Handle->pTxData,
                         CDC_Handle->TxDataLength,
                         CDC_Handle->DataItf.OutPipe,
                         1);
    }

    CDC_Handle->data_tx_state = 128;

    break;

  case 128:

    URB_Status = USBH_LL_GetURBState(phost, CDC_Handle->DataItf.OutPipe);


    if(URB_Status == USBH_URB_DONE )
    {
      if(CDC_Handle->TxDataLength > CDC_Handle->DataItf.OutEpSize)
      {
        CDC_Handle->TxDataLength -= CDC_Handle->DataItf.OutEpSize ;
        CDC_Handle->pTxData += CDC_Handle->DataItf.OutEpSize;
      }
      else
      {
        CDC_Handle->TxDataLength = 0;
      }

      if( CDC_Handle->TxDataLength > 0)
      {
       CDC_Handle->data_tx_state = 129;
      }
      else
      {
        CDC_Handle->data_tx_state = CDC_IDLE;
        USBH_CDC_TransmitCallback(phost);

      }
    }
    else if( URB_Status == USBH_URB_NOTREADY )
    {
      CDC_Handle->data_tx_state = 129;
    }
    break;
  default:
    break;
  }
}
