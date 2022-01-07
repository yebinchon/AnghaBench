
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_12__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_11__ {int req_state; int state; int transaction_id; int session_id; int data_length; int * object_ptr; int iteration; int data_packet; int data_packet_counter; int data_container; int * data_ptr; int flags; } ;
struct TYPE_14__ {TYPE_2__ ptp; } ;
struct TYPE_13__ {int Nparam; int Transaction_ID; int SessionID; int Code; } ;
struct TYPE_10__ {TYPE_5__* pData; } ;
typedef TYPE_4__ PTP_ContainerTypedef ;
typedef TYPE_5__ MTP_HandleTypeDef ;


 int PTP_DP_SENDDATA ;
 int PTP_OC_SendObject ;
 int PTP_OP_REQUEST_STATE ;


 int USBH_BUSY ;
 int USBH_PTP_Process (TYPE_3__*) ;
 int USBH_PTP_SendRequest (TYPE_3__*,TYPE_4__*) ;

USBH_StatusTypeDef USBH_PTP_SendObject (USBH_HandleTypeDef *phost,
                                           uint32_t handle,
                                           uint8_t *object,
                                           uint32_t size)
{
  USBH_StatusTypeDef status = USBH_BUSY;
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;
  PTP_ContainerTypedef ptp_container;

  switch(MTP_Handle->ptp.req_state)
  {
  case 129:


    MTP_Handle->ptp.flags = PTP_DP_SENDDATA;
    MTP_Handle->ptp.data_ptr = (uint8_t *)&(MTP_Handle->ptp.data_container);
    MTP_Handle->ptp.data_packet_counter = 0;
    MTP_Handle->ptp.data_packet = 0;
    MTP_Handle->ptp.iteration = 0;


    MTP_Handle->ptp.object_ptr = object;
    MTP_Handle->ptp.data_length = size;


    ptp_container.Code = PTP_OC_SendObject;
    ptp_container.SessionID = MTP_Handle->ptp.session_id;
    ptp_container.Transaction_ID = MTP_Handle->ptp.transaction_id ++;
    ptp_container.Nparam = 0;



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
