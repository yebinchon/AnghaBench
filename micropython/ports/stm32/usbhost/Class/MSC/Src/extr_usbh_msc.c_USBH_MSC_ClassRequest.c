
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int int32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_10__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_11__ {int req_state; size_t max_lun; int prev_req_state; TYPE_2__* unit; } ;
struct TYPE_9__ {int state_changed; int prev_ready_state; } ;
struct TYPE_8__ {TYPE_4__* pData; } ;
typedef TYPE_4__ MSC_HandleTypeDef ;





 int USBH_BUSY ;
 int USBH_ClrFeature (TYPE_3__*,int) ;
 int USBH_FAIL ;
 int USBH_MSC_BOT_REQ_GetMaxLUN (TYPE_3__*,size_t*) ;
 int USBH_OK ;
 int USBH_UsrLog (char*,int ) ;

__attribute__((used)) static USBH_StatusTypeDef USBH_MSC_ClassRequest(USBH_HandleTypeDef *phost)
{
  MSC_HandleTypeDef *MSC_Handle = phost->pActiveClass->pData;
  USBH_StatusTypeDef status = USBH_BUSY;
  uint8_t i;


  switch (MSC_Handle->req_state)
  {
  case 128:
  case 129:

    if(USBH_MSC_BOT_REQ_GetMaxLUN(phost, (uint8_t *)&MSC_Handle->max_lun) == USBH_OK )
    {
      MSC_Handle->max_lun = (uint8_t )(MSC_Handle->max_lun) + 1;
      USBH_UsrLog ("Number of supported LUN: %lu", (int32_t)(MSC_Handle->max_lun));

      for(i = 0; i < MSC_Handle->max_lun; i++)
      {
        MSC_Handle->unit[i].prev_ready_state = USBH_FAIL;
        MSC_Handle->unit[i].state_changed = 0;
      }
      status = USBH_OK;
    }
    break;

  case 130 :

    if(USBH_ClrFeature(phost, 0x00) == USBH_OK)
    {
      MSC_Handle->req_state = MSC_Handle->prev_req_state;
    }
    break;

  default:
    break;
  }

  return status;
}
