
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_6__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_7__ {scalar_t__ state; int data_tx_state; int TxDataLength; int * pTxData; } ;
struct TYPE_5__ {TYPE_3__* pData; } ;
typedef TYPE_3__ CDC_HandleTypeDef ;


 scalar_t__ CDC_IDLE_STATE ;
 int CDC_SEND_DATA ;
 scalar_t__ CDC_TRANSFER_DATA ;
 int USBH_BUSY ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_CDC_Transmit(USBH_HandleTypeDef *phost, uint8_t *pbuff, uint32_t length)
{
  USBH_StatusTypeDef Status = USBH_BUSY;
  CDC_HandleTypeDef *CDC_Handle = phost->pActiveClass->pData;

  if((CDC_Handle->state == CDC_IDLE_STATE) || (CDC_Handle->state == CDC_TRANSFER_DATA))
  {
    CDC_Handle->pTxData = pbuff;
    CDC_Handle->TxDataLength = length;
    CDC_Handle->state = CDC_TRANSFER_DATA;
    CDC_Handle->data_tx_state = CDC_SEND_DATA;
    Status = USBH_OK;
  }
  return Status;
}
