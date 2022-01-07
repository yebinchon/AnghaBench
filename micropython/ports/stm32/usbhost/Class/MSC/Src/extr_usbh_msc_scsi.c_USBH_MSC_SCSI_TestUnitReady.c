
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_13__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_5__ USBH_HandleTypeDef ;
struct TYPE_10__ {int * CB; int CBLength; int Flags; int DataTransferLength; } ;
struct TYPE_11__ {TYPE_2__ field; } ;
struct TYPE_12__ {int cmd_state; int state; TYPE_3__ cbw; } ;
struct TYPE_14__ {TYPE_4__ hbot; } ;
struct TYPE_9__ {TYPE_6__* pData; } ;
typedef TYPE_6__ MSC_HandleTypeDef ;




 int BOT_SEND_CBW ;
 int CBW_CB_LENGTH ;
 int CBW_LENGTH ;
 int DATA_LEN_MODE_TEST_UNIT_READY ;
 int OPCODE_TEST_UNIT_READY ;
 int USBH_BUSY ;
 int USBH_FAIL ;
 int USBH_MSC_BOT_Process (TYPE_5__*,int ) ;
 int USBH_memset (int *,int ,int ) ;
 int USB_EP_DIR_OUT ;

USBH_StatusTypeDef USBH_MSC_SCSI_TestUnitReady (USBH_HandleTypeDef *phost,
                                                uint8_t lun)
{
  USBH_StatusTypeDef error = USBH_FAIL ;
  MSC_HandleTypeDef *MSC_Handle = phost->pActiveClass->pData;

  switch(MSC_Handle->hbot.cmd_state)
  {
  case 129:


    MSC_Handle->hbot.cbw.field.DataTransferLength = DATA_LEN_MODE_TEST_UNIT_READY;
    MSC_Handle->hbot.cbw.field.Flags = USB_EP_DIR_OUT;
    MSC_Handle->hbot.cbw.field.CBLength = CBW_LENGTH;

    USBH_memset(MSC_Handle->hbot.cbw.field.CB, 0, CBW_CB_LENGTH);
    MSC_Handle->hbot.cbw.field.CB[0] = OPCODE_TEST_UNIT_READY;

    MSC_Handle->hbot.state = BOT_SEND_CBW;
    MSC_Handle->hbot.cmd_state = 128;
    error = USBH_BUSY;
    break;

  case 128:
    error = USBH_MSC_BOT_Process(phost, lun);
    break;

  default:
    break;
  }

  return error;
}
