
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_13__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_12__ {int req_state; int state; int transaction_id; int session_id; int data_packet; int data_packet_counter; int data_length; int data_container; int * data_ptr; int flags; } ;
struct TYPE_15__ {TYPE_2__ ptp; } ;
struct TYPE_14__ {int Nparam; int Transaction_ID; int SessionID; int Code; } ;
struct TYPE_11__ {TYPE_5__* pData; } ;
typedef int PTP_DeviceInfoTypedef ;
typedef TYPE_4__ PTP_ContainerTypedef ;
typedef TYPE_5__ MTP_HandleTypeDef ;


 int PTP_DP_GETDATA ;
 int PTP_DecodeDeviceInfo (TYPE_3__*,int *) ;
 int PTP_OC_GetDeviceInfo ;
 int PTP_OP_REQUEST_STATE ;


 int USBH_BUSY ;
 int USBH_OK ;
 int USBH_PTP_Process (TYPE_3__*) ;
 int USBH_PTP_SendRequest (TYPE_3__*,TYPE_4__*) ;

USBH_StatusTypeDef USBH_PTP_GetDeviceInfo (USBH_HandleTypeDef *phost, PTP_DeviceInfoTypedef *dev_info)
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


    ptp_container.Code = PTP_OC_GetDeviceInfo;
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

    if(status == USBH_OK)
    {
       PTP_DecodeDeviceInfo (phost, dev_info);
    }
    break;

  default:
    break;
  }
  return status;
}
