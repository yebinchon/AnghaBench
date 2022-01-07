
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int USBH_URBStateTypeDef ;
struct TYPE_12__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_11__ {scalar_t__ InEpSize; int InPipe; } ;
struct TYPE_13__ {int data_rx_state; scalar_t__ pRxData; scalar_t__ RxDataLength; TYPE_2__ DataItf; } ;
struct TYPE_10__ {TYPE_4__* pData; } ;
typedef TYPE_4__ CDC_HandleTypeDef ;


 int CDC_IDLE ;


 int USBH_BulkReceiveData (TYPE_3__*,scalar_t__,scalar_t__,int ) ;
 int USBH_CDC_ReceiveCallback (TYPE_3__*) ;
 scalar_t__ USBH_LL_GetLastXferSize (TYPE_3__*,int ) ;
 int USBH_LL_GetURBState (TYPE_3__*,int ) ;
 int USBH_URB_DONE ;
 int USBH_URB_IDLE ;

__attribute__((used)) static void CDC_ProcessReception(USBH_HandleTypeDef *phost)
{
  CDC_HandleTypeDef *CDC_Handle = phost->pActiveClass->pData;
  USBH_URBStateTypeDef URB_Status = USBH_URB_IDLE;
  uint16_t length;

  switch(CDC_Handle->data_rx_state)
  {

  case 129:

    USBH_BulkReceiveData (phost,
                          CDC_Handle->pRxData,
                          CDC_Handle->DataItf.InEpSize,
                          CDC_Handle->DataItf.InPipe);

    CDC_Handle->data_rx_state = 128;

    break;

  case 128:

    URB_Status = USBH_LL_GetURBState(phost, CDC_Handle->DataItf.InPipe);


    if(URB_Status == USBH_URB_DONE )
    {
      length = USBH_LL_GetLastXferSize(phost, CDC_Handle->DataItf.InPipe);

      if(((CDC_Handle->RxDataLength - length) > 0) && (length > CDC_Handle->DataItf.InEpSize))
      {
        CDC_Handle->RxDataLength -= length ;
        CDC_Handle->pRxData += length;
        CDC_Handle->data_rx_state = 129;
      }
      else
      {
        CDC_Handle->data_rx_state = CDC_IDLE;
        USBH_CDC_ReceiveCallback(phost);
      }
    }
    break;

  default:
    break;
  }
}
