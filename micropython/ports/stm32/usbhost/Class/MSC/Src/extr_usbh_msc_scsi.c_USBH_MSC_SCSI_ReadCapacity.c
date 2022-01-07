
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
struct TYPE_12__ {int * CB; int CBLength; int Flags; int DataTransferLength; } ;
struct TYPE_13__ {TYPE_2__ field; } ;
struct TYPE_14__ {int cmd_state; int* pbuf; scalar_t__ data; int state; TYPE_3__ cbw; } ;
struct TYPE_17__ {TYPE_4__ hbot; } ;
struct TYPE_16__ {int block_nbr; int block_size; } ;
struct TYPE_11__ {TYPE_7__* pData; } ;
typedef TYPE_6__ SCSI_CapacityTypeDef ;
typedef TYPE_7__ MSC_HandleTypeDef ;




 int BOT_SEND_CBW ;
 int CBW_CB_LENGTH ;
 int CBW_LENGTH ;
 int DATA_LEN_READ_CAPACITY10 ;
 int OPCODE_READ_CAPACITY10 ;
 int USBH_BUSY ;
 int USBH_MSC_BOT_Process (TYPE_5__*,int) ;
 int USBH_OK ;
 int USBH_memset (int *,int ,int ) ;
 int USB_EP_DIR_IN ;

USBH_StatusTypeDef USBH_MSC_SCSI_ReadCapacity (USBH_HandleTypeDef *phost,
                                               uint8_t lun,
                                               SCSI_CapacityTypeDef *capacity)
{
  USBH_StatusTypeDef error = USBH_BUSY ;
  MSC_HandleTypeDef *MSC_Handle = phost->pActiveClass->pData;

  switch(MSC_Handle->hbot.cmd_state)
  {
  case 129:


    MSC_Handle->hbot.cbw.field.DataTransferLength = DATA_LEN_READ_CAPACITY10;
    MSC_Handle->hbot.cbw.field.Flags = USB_EP_DIR_IN;
    MSC_Handle->hbot.cbw.field.CBLength = CBW_LENGTH;

    USBH_memset(MSC_Handle->hbot.cbw.field.CB, 0, CBW_CB_LENGTH);
    MSC_Handle->hbot.cbw.field.CB[0] = OPCODE_READ_CAPACITY10;

    MSC_Handle->hbot.state = BOT_SEND_CBW;

    MSC_Handle->hbot.cmd_state = 128;
    MSC_Handle->hbot.pbuf = (uint8_t *)MSC_Handle->hbot.data;
    error = USBH_BUSY;
    break;

  case 128:

    error = USBH_MSC_BOT_Process(phost, lun);

    if(error == USBH_OK)
    {

      capacity->block_nbr = MSC_Handle->hbot.pbuf[3] | (MSC_Handle->hbot.pbuf[2] << 8) | (MSC_Handle->hbot.pbuf[1] << 16) | (MSC_Handle->hbot.pbuf[0] << 24);



      capacity->block_size = MSC_Handle->hbot.pbuf[7] | (MSC_Handle->hbot.pbuf[6] << 8);
    }
    break;

  default:
    break;
  }

  return error;
}
