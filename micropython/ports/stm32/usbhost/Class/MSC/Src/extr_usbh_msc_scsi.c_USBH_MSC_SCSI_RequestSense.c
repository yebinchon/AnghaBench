
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_15__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_5__ USBH_HandleTypeDef ;
struct TYPE_12__ {int* CB; int CBLength; int Flags; void* DataTransferLength; } ;
struct TYPE_13__ {TYPE_2__ field; } ;
struct TYPE_14__ {int cmd_state; int* pbuf; scalar_t__ data; int state; TYPE_3__ cbw; } ;
struct TYPE_17__ {TYPE_4__ hbot; } ;
struct TYPE_16__ {int key; int asc; int ascq; } ;
struct TYPE_11__ {TYPE_7__* pData; } ;
typedef TYPE_6__ SCSI_SenseTypeDef ;
typedef TYPE_7__ MSC_HandleTypeDef ;




 int BOT_SEND_CBW ;
 int CBW_CB_LENGTH ;
 int CBW_LENGTH ;
 void* DATA_LEN_REQUEST_SENSE ;
 int OPCODE_REQUEST_SENSE ;
 int USBH_BUSY ;
 int USBH_FAIL ;
 int USBH_MSC_BOT_Process (TYPE_5__*,int) ;
 int USBH_OK ;
 int USBH_memset (int*,int ,int ) ;
 int USB_EP_DIR_IN ;

USBH_StatusTypeDef USBH_MSC_SCSI_RequestSense (USBH_HandleTypeDef *phost,
                                               uint8_t lun,
                                               SCSI_SenseTypeDef *sense_data)
{
  USBH_StatusTypeDef error = USBH_FAIL ;
  MSC_HandleTypeDef *MSC_Handle = phost->pActiveClass->pData;

  switch(MSC_Handle->hbot.cmd_state)
  {
  case 129:


    MSC_Handle->hbot.cbw.field.DataTransferLength = DATA_LEN_REQUEST_SENSE;
    MSC_Handle->hbot.cbw.field.Flags = USB_EP_DIR_IN;
    MSC_Handle->hbot.cbw.field.CBLength = CBW_LENGTH;

    USBH_memset(MSC_Handle->hbot.cbw.field.CB, 0, CBW_CB_LENGTH);
    MSC_Handle->hbot.cbw.field.CB[0] = OPCODE_REQUEST_SENSE;
    MSC_Handle->hbot.cbw.field.CB[1] = (lun << 5);
    MSC_Handle->hbot.cbw.field.CB[2] = 0;
    MSC_Handle->hbot.cbw.field.CB[3] = 0;
    MSC_Handle->hbot.cbw.field.CB[4] = DATA_LEN_REQUEST_SENSE;
    MSC_Handle->hbot.cbw.field.CB[5] = 0;

    MSC_Handle->hbot.state = BOT_SEND_CBW;
    MSC_Handle->hbot.cmd_state = 128;
    MSC_Handle->hbot.pbuf = (uint8_t *)MSC_Handle->hbot.data;
    error = USBH_BUSY;
    break;

  case 128:

    error = USBH_MSC_BOT_Process(phost, lun);

    if(error == USBH_OK)
    {
      sense_data->key = MSC_Handle->hbot.pbuf[2] & 0x0F;
      sense_data->asc = MSC_Handle->hbot.pbuf[12];
      sense_data->ascq = MSC_Handle->hbot.pbuf[13];
    }
    break;

  default:
    break;
  }

  return error;
}
