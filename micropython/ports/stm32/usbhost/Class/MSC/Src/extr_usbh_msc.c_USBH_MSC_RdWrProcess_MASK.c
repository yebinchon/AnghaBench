#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  USBH_StatusTypeDef ;
struct TYPE_12__ {int /*<<< orphan*/  os_event; TYPE_1__* pActiveClass; } ;
typedef  TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_14__ {int /*<<< orphan*/  ascq; int /*<<< orphan*/  asc; int /*<<< orphan*/  key; } ;
struct TYPE_13__ {TYPE_2__* unit; } ;
struct TYPE_11__ {int state; int /*<<< orphan*/  error; TYPE_7__ sense; } ;
struct TYPE_10__ {TYPE_4__* pData; } ;
typedef  TYPE_4__ MSC_HandleTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  MSC_ERROR ; 
 void* MSC_IDLE ; 
#define  MSC_READ 130 
#define  MSC_REQUEST_SENSE 129 
 void* MSC_UNRECOVERED_ERROR ; 
#define  MSC_WRITE 128 
 int /*<<< orphan*/  USBH_BUSY ; 
 int /*<<< orphan*/  USBH_CLASS_EVENT ; 
 int /*<<< orphan*/  USBH_FAIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USBH_OK ; 
 int /*<<< orphan*/  USBH_UNRECOVERED_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static USBH_StatusTypeDef FUNC5(USBH_HandleTypeDef *phost, uint8_t lun)
{
  MSC_HandleTypeDef *MSC_Handle =  phost->pActiveClass->pData;
  USBH_StatusTypeDef error = USBH_BUSY ;
  USBH_StatusTypeDef scsi_status = USBH_BUSY ;  
  
  /* Switch MSC REQ state machine */
  switch (MSC_Handle->unit[lun].state)
  {
 
  case MSC_READ: 
    scsi_status = FUNC0(phost,lun, 0, NULL, 0) ;
    
    if(scsi_status == USBH_OK)
    {
      MSC_Handle->unit[lun].state = MSC_IDLE;
      error = USBH_OK;     
    }
    else if( scsi_status == USBH_FAIL)
    {
      MSC_Handle->unit[lun].state = MSC_REQUEST_SENSE;  
    }
    else if(scsi_status == USBH_UNRECOVERED_ERROR)
    {
      MSC_Handle->unit[lun].state = MSC_UNRECOVERED_ERROR;
          error = USBH_FAIL;
    }
#if (USBH_USE_OS == 1)
    osMessagePut ( phost->os_event, USBH_CLASS_EVENT, 0);
#endif   
    break;     
    
  case MSC_WRITE: 
    scsi_status = FUNC2(phost,lun, 0, NULL, 0) ;
    
    if(scsi_status == USBH_OK)
    {
        MSC_Handle->unit[lun].state = MSC_IDLE;
        error = USBH_OK;             
    }
    else if( scsi_status == USBH_FAIL)
    {
      MSC_Handle->unit[lun].state = MSC_REQUEST_SENSE;  
    }
    else if(scsi_status == USBH_UNRECOVERED_ERROR)
    {
      MSC_Handle->unit[lun].state = MSC_UNRECOVERED_ERROR;
          error = USBH_FAIL;
    }
#if (USBH_USE_OS == 1)
    osMessagePut ( phost->os_event, USBH_CLASS_EVENT, 0);
#endif       
    break; 
  
  case MSC_REQUEST_SENSE:
    scsi_status = FUNC1(phost, lun, &MSC_Handle->unit[lun].sense);
    
    if( scsi_status == USBH_OK)
    {
      FUNC3 ("Sense Key  : %x", MSC_Handle->unit[lun].sense.key);
      FUNC3 ("Additional Sense Code : %x", MSC_Handle->unit[lun].sense.asc);
      FUNC3 ("Additional Sense Code Qualifier: %x", MSC_Handle->unit[lun].sense.ascq);
      MSC_Handle->unit[lun].state = MSC_IDLE;
      MSC_Handle->unit[lun].error = MSC_ERROR;
      
      error = USBH_FAIL;
    }
    if( scsi_status == USBH_FAIL)
    {
      FUNC3 ("Mass Storage Device NOT ready");
    }
    else if(scsi_status == USBH_UNRECOVERED_ERROR)
    {
      MSC_Handle->unit[lun].state = MSC_UNRECOVERED_ERROR;  
          error = USBH_FAIL;
    }
#if (USBH_USE_OS == 1)
    osMessagePut ( phost->os_event, USBH_CLASS_EVENT, 0);
#endif       
    break;  
    
  default:
    break;  
    
  }
  return error;
}