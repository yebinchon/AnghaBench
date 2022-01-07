
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_14__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_12__ {void* param1; } ;
struct TYPE_13__ {int req_state; TYPE_2__ resp_container; int state; int transaction_id; int session_id; int flags; } ;
struct TYPE_16__ {TYPE_3__ ptp; } ;
struct TYPE_15__ {int Nparam; void* Param3; void* Param2; void* Param1; int Transaction_ID; int SessionID; int Code; } ;
struct TYPE_11__ {TYPE_6__* pData; } ;
typedef TYPE_5__ PTP_ContainerTypedef ;
typedef TYPE_6__ MTP_HandleTypeDef ;


 int PTP_DP_NODATA ;
 int PTP_OC_GetNumObjects ;
 int PTP_OP_REQUEST_STATE ;


 int USBH_BUSY ;
 int USBH_OK ;
 int USBH_PTP_Process (TYPE_4__*) ;
 int USBH_PTP_SendRequest (TYPE_4__*,TYPE_5__*) ;

USBH_StatusTypeDef USBH_PTP_GetNumObjects (USBH_HandleTypeDef *phost,
                                           uint32_t storage_id,
                                           uint32_t objectformatcode,
                                           uint32_t associationOH,
                                           uint32_t* numobs)
{
  USBH_StatusTypeDef status = USBH_BUSY;
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;
  PTP_ContainerTypedef ptp_container;

  switch(MTP_Handle->ptp.req_state)
  {
  case 129:


    MTP_Handle->ptp.flags = PTP_DP_NODATA;


    ptp_container.Code = PTP_OC_GetNumObjects;
    ptp_container.SessionID = MTP_Handle->ptp.session_id;
    ptp_container.Transaction_ID = MTP_Handle->ptp.transaction_id ++;
    ptp_container.Param1 = storage_id;
    ptp_container.Param2 = objectformatcode;
    ptp_container.Param3 = associationOH;
    ptp_container.Nparam = 3;


    USBH_PTP_SendRequest (phost, &ptp_container);


    MTP_Handle->ptp.state = PTP_OP_REQUEST_STATE;
    MTP_Handle->ptp.req_state = 128;
    status = USBH_BUSY;
    break;

  case 128:
    status = USBH_PTP_Process(phost);

    if(status == USBH_OK)
    {
      *numobs = MTP_Handle->ptp.resp_container.param1;
    }
    break;

  default:
    break;
  }
  return status;
}
