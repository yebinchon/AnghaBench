
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_17__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_5__ USBH_HandleTypeDef ;
struct TYPE_14__ {int data; } ;
struct TYPE_15__ {TYPE_2__ payload; } ;
struct TYPE_16__ {int req_state; int data_length; int state; int transaction_id; int session_id; int object_ptr; TYPE_3__ data_container; int data_packet; int data_packet_counter; int * data_ptr; int flags; } ;
struct TYPE_19__ {TYPE_4__ ptp; } ;
struct TYPE_18__ {int Param2; int Param3; int Param4; int Param5; int Nparam; int Param1; int Transaction_ID; int SessionID; int Code; } ;
struct TYPE_13__ {TYPE_7__* pData; } ;
typedef TYPE_6__ PTP_ContainerTypedef ;
typedef int MTP_PropertiesTypedef ;
typedef TYPE_7__ MTP_HandleTypeDef ;


 int PTP_DP_GETDATA ;
 int PTP_GetObjectPropList (TYPE_5__*,int *,int ) ;
 int PTP_OC_GetObjPropList ;
 int PTP_OP_REQUEST_STATE ;


 int PTP_USB_BULK_PAYLOAD_LEN_READ ;
 int USBH_BUSY ;
 int USBH_OK ;
 int USBH_PTP_Process (TYPE_5__*) ;
 int USBH_PTP_SendRequest (TYPE_5__*,TYPE_6__*) ;
 int USBH_memcpy (int ,int ,int ) ;

USBH_StatusTypeDef USBH_PTP_GetObjectPropList (USBH_HandleTypeDef *phost,
                                                uint32_t handle,
                                                MTP_PropertiesTypedef *pprops,
                                                uint32_t *nrofprops)
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


    USBH_memcpy(MTP_Handle->ptp.data_container.payload.data, MTP_Handle->ptp.object_ptr, PTP_USB_BULK_PAYLOAD_LEN_READ);


    ptp_container.Code = PTP_OC_GetObjPropList;
    ptp_container.SessionID = MTP_Handle->ptp.session_id;
    ptp_container.Transaction_ID = MTP_Handle->ptp.transaction_id ++;
    ptp_container.Param1 = handle;
    ptp_container.Param2 = 0x00000000U;
    ptp_container.Param3 = 0xFFFFFFFFU;
    ptp_container.Param4 = 0x00000000U;
    ptp_container.Param5 = 0xFFFFFFFFU;
    ptp_container.Nparam = 5;


    USBH_PTP_SendRequest (phost, &ptp_container);


    MTP_Handle->ptp.state = PTP_OP_REQUEST_STATE;
    MTP_Handle->ptp.req_state = 128;
    status = USBH_BUSY;
    break;

  case 128:
    status = USBH_PTP_Process(phost);

    if(status == USBH_OK)
    {
      PTP_GetObjectPropList (phost, pprops, MTP_Handle->ptp.data_length);
    }
    break;

  default:
    break;
  }
  return status;
}
