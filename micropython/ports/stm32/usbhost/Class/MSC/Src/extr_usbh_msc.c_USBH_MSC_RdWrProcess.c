
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_12__ {int os_event; TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_14__ {int ascq; int asc; int key; } ;
struct TYPE_13__ {TYPE_2__* unit; } ;
struct TYPE_11__ {int state; int error; TYPE_7__ sense; } ;
struct TYPE_10__ {TYPE_4__* pData; } ;
typedef TYPE_4__ MSC_HandleTypeDef ;


 int MSC_ERROR ;
 void* MSC_IDLE ;


 void* MSC_UNRECOVERED_ERROR ;

 int USBH_BUSY ;
 int USBH_CLASS_EVENT ;
 int USBH_FAIL ;
 int USBH_MSC_SCSI_Read (TYPE_3__*,size_t,int ,int *,int ) ;
 int USBH_MSC_SCSI_RequestSense (TYPE_3__*,size_t,TYPE_7__*) ;
 int USBH_MSC_SCSI_Write (TYPE_3__*,size_t,int ,int *,int ) ;
 int USBH_OK ;
 int USBH_UNRECOVERED_ERROR ;
 int USBH_UsrLog (char*,...) ;
 int osMessagePut (int ,int ,int ) ;

__attribute__((used)) static USBH_StatusTypeDef USBH_MSC_RdWrProcess(USBH_HandleTypeDef *phost, uint8_t lun)
{
  MSC_HandleTypeDef *MSC_Handle = phost->pActiveClass->pData;
  USBH_StatusTypeDef error = USBH_BUSY ;
  USBH_StatusTypeDef scsi_status = USBH_BUSY ;


  switch (MSC_Handle->unit[lun].state)
  {

  case 130:
    scsi_status = USBH_MSC_SCSI_Read(phost,lun, 0, ((void*)0), 0) ;

    if(scsi_status == USBH_OK)
    {
      MSC_Handle->unit[lun].state = MSC_IDLE;
      error = USBH_OK;
    }
    else if( scsi_status == USBH_FAIL)
    {
      MSC_Handle->unit[lun].state = 129;
    }
    else if(scsi_status == USBH_UNRECOVERED_ERROR)
    {
      MSC_Handle->unit[lun].state = MSC_UNRECOVERED_ERROR;
          error = USBH_FAIL;
    }



    break;

  case 128:
    scsi_status = USBH_MSC_SCSI_Write(phost,lun, 0, ((void*)0), 0) ;

    if(scsi_status == USBH_OK)
    {
        MSC_Handle->unit[lun].state = MSC_IDLE;
        error = USBH_OK;
    }
    else if( scsi_status == USBH_FAIL)
    {
      MSC_Handle->unit[lun].state = 129;
    }
    else if(scsi_status == USBH_UNRECOVERED_ERROR)
    {
      MSC_Handle->unit[lun].state = MSC_UNRECOVERED_ERROR;
          error = USBH_FAIL;
    }



    break;

  case 129:
    scsi_status = USBH_MSC_SCSI_RequestSense(phost, lun, &MSC_Handle->unit[lun].sense);

    if( scsi_status == USBH_OK)
    {
      USBH_UsrLog ("Sense Key  : %x", MSC_Handle->unit[lun].sense.key);
      USBH_UsrLog ("Additional Sense Code : %x", MSC_Handle->unit[lun].sense.asc);
      USBH_UsrLog ("Additional Sense Code Qualifier: %x", MSC_Handle->unit[lun].sense.ascq);
      MSC_Handle->unit[lun].state = MSC_IDLE;
      MSC_Handle->unit[lun].error = MSC_ERROR;

      error = USBH_FAIL;
    }
    if( scsi_status == USBH_FAIL)
    {
      USBH_UsrLog ("Mass Storage Device NOT ready");
    }
    else if(scsi_status == USBH_UNRECOVERED_ERROR)
    {
      MSC_Handle->unit[lun].state = MSC_UNRECOVERED_ERROR;
          error = USBH_FAIL;
    }



    break;

  default:
    break;

  }
  return error;
}
