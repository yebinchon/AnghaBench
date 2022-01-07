
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int int32_t ;
typedef void* USBH_StatusTypeDef ;
struct TYPE_18__ {int (* pUser ) (TYPE_3__*,int ) ;int os_event; int Timer; TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_20__ {int ascq; int asc; int key; } ;
struct TYPE_19__ {int state; size_t current_lun; size_t max_lun; TYPE_2__* unit; int timer; } ;
struct TYPE_14__ {int block_nbr; int block_size; } ;
struct TYPE_15__ {int revision_id; int product_id; int vendor_id; } ;
struct TYPE_17__ {int state; void* prev_ready_state; int state_changed; void* error; TYPE_8__ sense; TYPE_10__ capacity; TYPE_12__ inquiry; } ;
struct TYPE_16__ {TYPE_4__* pData; } ;
typedef TYPE_4__ MSC_HandleTypeDef ;


 int HOST_USER_CLASS_ACTIVE ;
 void* MSC_ERROR ;


 void* MSC_NOT_READY ;
 void* MSC_OK ;





 int SCSI_SENSE_KEY_NOT_READY ;
 int SCSI_SENSE_KEY_UNIT_ATTENTION ;
 void* USBH_BUSY ;
 int USBH_CLASS_EVENT ;
 void* USBH_FAIL ;
 void* USBH_MSC_SCSI_Inquiry (TYPE_3__*,size_t,TYPE_12__*) ;
 void* USBH_MSC_SCSI_ReadCapacity (TYPE_3__*,size_t,TYPE_10__*) ;
 void* USBH_MSC_SCSI_RequestSense (TYPE_3__*,size_t,TYPE_8__*) ;
 void* USBH_MSC_SCSI_TestUnitReady (TYPE_3__*,size_t) ;
 void* USBH_OK ;
 void* USBH_UNRECOVERED_ERROR ;
 int USBH_UsrLog (char*,...) ;
 int osMessagePut (int ,int ,int ) ;
 int stub1 (TYPE_3__*,int ) ;

__attribute__((used)) static USBH_StatusTypeDef USBH_MSC_Process(USBH_HandleTypeDef *phost)
{
  MSC_HandleTypeDef *MSC_Handle = phost->pActiveClass->pData;
  USBH_StatusTypeDef error = USBH_BUSY ;
  USBH_StatusTypeDef scsi_status = USBH_BUSY ;
  USBH_StatusTypeDef ready_status = USBH_BUSY ;

  switch (MSC_Handle->state)
  {
  case 133:

    if(MSC_Handle->current_lun < MSC_Handle->max_lun)
    {

      MSC_Handle->unit[MSC_Handle->current_lun].error = MSC_NOT_READY;

      switch (MSC_Handle->unit[MSC_Handle->current_lun].state)
      {
      case 133:
        USBH_UsrLog ("LUN #%d: ", MSC_Handle->current_lun);
        MSC_Handle->unit[MSC_Handle->current_lun].state = 131;
        MSC_Handle->timer = phost->Timer + 10000;

      case 131:
        scsi_status = USBH_MSC_SCSI_Inquiry(phost, MSC_Handle->current_lun, &MSC_Handle->unit[MSC_Handle->current_lun].inquiry);

        if( scsi_status == USBH_OK)
        {
          USBH_UsrLog ("Inquiry Vendor  : %s", MSC_Handle->unit[MSC_Handle->current_lun].inquiry.vendor_id);
          USBH_UsrLog ("Inquiry Product : %s", MSC_Handle->unit[MSC_Handle->current_lun].inquiry.product_id);
          USBH_UsrLog ("Inquiry Version : %s", MSC_Handle->unit[MSC_Handle->current_lun].inquiry.revision_id);
          MSC_Handle->unit[MSC_Handle->current_lun].state = 129;
        }
        if( scsi_status == USBH_FAIL)
        {
          MSC_Handle->unit[MSC_Handle->current_lun].state = 130;
        }
        else if(scsi_status == USBH_UNRECOVERED_ERROR)
        {
          MSC_Handle->unit[MSC_Handle->current_lun].state = 134;
          MSC_Handle->unit[MSC_Handle->current_lun].error = MSC_ERROR;
        }
        break;

      case 129:
        ready_status = USBH_MSC_SCSI_TestUnitReady(phost, MSC_Handle->current_lun);

        if( ready_status == USBH_OK)
        {
          if( MSC_Handle->unit[MSC_Handle->current_lun].prev_ready_state != USBH_OK)
          {
            MSC_Handle->unit[MSC_Handle->current_lun].state_changed = 1;
            USBH_UsrLog ("Mass Storage Device ready");
          }
          else
          {
            MSC_Handle->unit[MSC_Handle->current_lun].state_changed = 0;
          }
          MSC_Handle->unit[MSC_Handle->current_lun].state = 132;
          MSC_Handle->unit[MSC_Handle->current_lun].error = MSC_OK;
          MSC_Handle->unit[MSC_Handle->current_lun].prev_ready_state = USBH_OK;
        }
        if( ready_status == USBH_FAIL)
        {

          if( MSC_Handle->unit[MSC_Handle->current_lun].prev_ready_state != USBH_FAIL)
          {
            MSC_Handle->unit[MSC_Handle->current_lun].state_changed = 1;
            USBH_UsrLog ("Mass Storage Device NOT ready");
          }
          else
          {
            MSC_Handle->unit[MSC_Handle->current_lun].state_changed = 0;
          }
            MSC_Handle->unit[MSC_Handle->current_lun].state = 130;
            MSC_Handle->unit[MSC_Handle->current_lun].error = MSC_NOT_READY;
            MSC_Handle->unit[MSC_Handle->current_lun].prev_ready_state = USBH_FAIL;
        }
        else if(ready_status == USBH_UNRECOVERED_ERROR)
        {
          MSC_Handle->unit[MSC_Handle->current_lun].state = 134;
          MSC_Handle->unit[MSC_Handle->current_lun].error = MSC_ERROR;
        }
        break;

      case 132:
        scsi_status = USBH_MSC_SCSI_ReadCapacity(phost,MSC_Handle->current_lun, &MSC_Handle->unit[MSC_Handle->current_lun].capacity) ;

        if(scsi_status == USBH_OK)
        {
          if(MSC_Handle->unit[MSC_Handle->current_lun].state_changed == 1)
          {
            USBH_UsrLog ("Mass Storage Device capacity : %lu MB", (int32_t)((MSC_Handle->unit[MSC_Handle->current_lun].capacity.block_nbr * MSC_Handle->unit[MSC_Handle->current_lun].capacity.block_size)/1024/1024));

            USBH_UsrLog ("Block number : %lu", (int32_t)(MSC_Handle->unit[MSC_Handle->current_lun].capacity.block_nbr));
            USBH_UsrLog ("Block Size   : %lu", (int32_t)(MSC_Handle->unit[MSC_Handle->current_lun].capacity.block_size));
          }
          MSC_Handle->unit[MSC_Handle->current_lun].state = 134;
          MSC_Handle->unit[MSC_Handle->current_lun].error = MSC_OK;
          MSC_Handle->current_lun++;
        }
        else if( scsi_status == USBH_FAIL)
        {
          MSC_Handle->unit[MSC_Handle->current_lun].state = 130;
        }
        else if(scsi_status == USBH_UNRECOVERED_ERROR)
        {
          MSC_Handle->unit[MSC_Handle->current_lun].state = 134;
          MSC_Handle->unit[MSC_Handle->current_lun].error = MSC_ERROR;
        }
        break;

      case 130:
        scsi_status = USBH_MSC_SCSI_RequestSense(phost, MSC_Handle->current_lun, &MSC_Handle->unit[MSC_Handle->current_lun].sense);

        if( scsi_status == USBH_OK)
        {
          if((MSC_Handle->unit[MSC_Handle->current_lun].sense.key == SCSI_SENSE_KEY_UNIT_ATTENTION) ||
             (MSC_Handle->unit[MSC_Handle->current_lun].sense.key == SCSI_SENSE_KEY_NOT_READY) )
          {

            if(phost->Timer <= MSC_Handle->timer)
            {
              MSC_Handle->unit[MSC_Handle->current_lun].state = 129;
              break;
            }
          }

          USBH_UsrLog ("Sense Key  : %x", MSC_Handle->unit[MSC_Handle->current_lun].sense.key);
          USBH_UsrLog ("Additional Sense Code : %x", MSC_Handle->unit[MSC_Handle->current_lun].sense.asc);
          USBH_UsrLog ("Additional Sense Code Qualifier: %x", MSC_Handle->unit[MSC_Handle->current_lun].sense.ascq);
          MSC_Handle->unit[MSC_Handle->current_lun].state = 134;
          MSC_Handle->current_lun++;
        }
        if( scsi_status == USBH_FAIL)
        {
          USBH_UsrLog ("Mass Storage Device NOT ready");
          MSC_Handle->unit[MSC_Handle->current_lun].state = 128;
        }
        else if(scsi_status == USBH_UNRECOVERED_ERROR)
        {
          MSC_Handle->unit[MSC_Handle->current_lun].state = 134;
          MSC_Handle->unit[MSC_Handle->current_lun].error = MSC_ERROR;
        }
        break;

      case 128:
        MSC_Handle->current_lun++;
        break;

      default:
        break;
      }




    }
    else
    {
      MSC_Handle->current_lun = 0;
    MSC_Handle->state = 134;



    phost->pUser(phost, HOST_USER_CLASS_ACTIVE);
    }
    break;

  case 134:
    error = USBH_OK;
    break;

  default:
    break;
  }
  return error;
}
