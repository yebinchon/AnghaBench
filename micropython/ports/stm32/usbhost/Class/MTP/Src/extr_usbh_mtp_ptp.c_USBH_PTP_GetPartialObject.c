
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_18__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_6__ USBH_HandleTypeDef ;
struct TYPE_15__ {int data; } ;
struct TYPE_16__ {TYPE_3__ payload; } ;
struct TYPE_14__ {void* param1; } ;
struct TYPE_17__ {int req_state; TYPE_4__ data_container; int * object_ptr; int iteration; TYPE_2__ resp_container; int state; int transaction_id; int session_id; int data_packet; int data_packet_counter; int data_length; int * data_ptr; int flags; } ;
struct TYPE_20__ {TYPE_5__ ptp; } ;
struct TYPE_19__ {int Nparam; void* Param3; void* Param2; void* Param1; int Transaction_ID; int SessionID; int Code; } ;
struct TYPE_13__ {TYPE_8__* pData; } ;
typedef TYPE_7__ PTP_ContainerTypedef ;
typedef TYPE_8__ MTP_HandleTypeDef ;


 int PTP_DP_GETDATA ;
 int PTP_OC_GetPartialObject ;
 int PTP_OP_REQUEST_STATE ;


 int USBH_BUSY ;
 int USBH_OK ;
 int USBH_PTP_Process (TYPE_6__*) ;
 int USBH_PTP_SendRequest (TYPE_6__*,TYPE_7__*) ;
 int USBH_memcpy (int *,int ,void*) ;

USBH_StatusTypeDef USBH_PTP_GetPartialObject(USBH_HandleTypeDef *phost,
                                           uint32_t handle,
                                           uint32_t offset,
                                           uint32_t maxbytes,
                                           uint8_t *object,
                                           uint32_t *len)
{
  USBH_StatusTypeDef status = USBH_BUSY;
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;
  PTP_ContainerTypedef ptp_container;

  switch(MTP_Handle->ptp.req_state)
  {
  case 129:


    MTP_Handle->ptp.flags = PTP_DP_GETDATA;
    MTP_Handle->ptp.data_ptr = (uint8_t *)&(MTP_Handle->ptp.data_container);
    MTP_Handle->ptp.data_length = 0;
    MTP_Handle->ptp.data_packet_counter = 0;
    MTP_Handle->ptp.data_packet = 0;


    MTP_Handle->ptp.object_ptr = object;


    ptp_container.Code = PTP_OC_GetPartialObject;
    ptp_container.SessionID = MTP_Handle->ptp.session_id;
    ptp_container.Transaction_ID = MTP_Handle->ptp.transaction_id ++;
    ptp_container.Param1 = handle;
    ptp_container.Param2 = offset;
    ptp_container.Param3 = maxbytes;
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
      *len = MTP_Handle->ptp.resp_container.param1;

      if(MTP_Handle->ptp.iteration == 0)
      {

        USBH_memcpy(MTP_Handle->ptp.object_ptr, MTP_Handle->ptp.data_container.payload.data, *len);
      }
    }
    break;

  default:
    break;
  }
  return status;
}
