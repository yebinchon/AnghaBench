
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_12__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_11__ {int req_state; int transaction_id; int state; int flags; void* session_id; } ;
struct TYPE_14__ {TYPE_2__ ptp; } ;
struct TYPE_13__ {int Nparam; void* Param1; int Transaction_ID; void* SessionID; int Code; } ;
struct TYPE_10__ {TYPE_5__* pData; } ;
typedef TYPE_4__ PTP_ContainerTypedef ;
typedef TYPE_5__ MTP_HandleTypeDef ;


 int PTP_DP_NODATA ;
 int PTP_OC_OpenSession ;
 int PTP_OP_REQUEST_STATE ;


 int USBH_BUSY ;
 int USBH_PTP_Process (TYPE_3__*) ;
 int USBH_PTP_SendRequest (TYPE_3__*,TYPE_4__*) ;

USBH_StatusTypeDef USBH_PTP_OpenSession (USBH_HandleTypeDef *phost, uint32_t session)
{
  USBH_StatusTypeDef status = USBH_BUSY;
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;
  PTP_ContainerTypedef ptp_container;

  switch(MTP_Handle->ptp.req_state)
  {
  case 129:


    MTP_Handle->ptp.transaction_id = 0x00000000;
    MTP_Handle->ptp.session_id = session;
    MTP_Handle->ptp.flags = PTP_DP_NODATA;


    ptp_container.Code = PTP_OC_OpenSession;
    ptp_container.SessionID = session;
    ptp_container.Transaction_ID = MTP_Handle->ptp.transaction_id ++;
    ptp_container.Param1 = session;
    ptp_container.Nparam = 1;


    USBH_PTP_SendRequest (phost, &ptp_container);


    MTP_Handle->ptp.state = PTP_OP_REQUEST_STATE;
    MTP_Handle->ptp.req_state = 128;
    status = USBH_BUSY;
    break;

  case 128:
    status = USBH_PTP_Process(phost);
    break;

  default:
    break;
  }
  return status;
}
