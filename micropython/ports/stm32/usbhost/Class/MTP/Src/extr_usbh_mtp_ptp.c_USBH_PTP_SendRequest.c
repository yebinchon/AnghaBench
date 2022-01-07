
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_11__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_14__ {int param5; int param4; int param3; int param2; int param1; int trans_id; int code; int type; scalar_t__ length; } ;
struct TYPE_10__ {TYPE_6__ op_container; } ;
struct TYPE_13__ {TYPE_2__ ptp; } ;
struct TYPE_12__ {int Nparam; int Param5; int Param4; int Param3; int Param2; int Param1; int Transaction_ID; int Code; } ;
struct TYPE_9__ {TYPE_5__* pData; } ;
typedef int PTP_OpContainerTypedef ;
typedef TYPE_4__ PTP_ContainerTypedef ;
typedef TYPE_5__ MTP_HandleTypeDef ;


 scalar_t__ PTP_USB_BULK_REQ_LEN ;
 int PTP_USB_CONTAINER_COMMAND ;
 int USBH_OK ;
 int USBH_memset (TYPE_6__*,int ,int) ;

USBH_StatusTypeDef USBH_PTP_SendRequest (USBH_HandleTypeDef *phost, PTP_ContainerTypedef *req)
{
  USBH_StatusTypeDef status = USBH_OK;
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;


  USBH_memset(&(MTP_Handle->ptp.op_container), 0, sizeof(PTP_OpContainerTypedef));


  MTP_Handle->ptp.op_container.length = PTP_USB_BULK_REQ_LEN- (sizeof(uint32_t)*(5-req->Nparam));
  MTP_Handle->ptp.op_container.type = PTP_USB_CONTAINER_COMMAND;
  MTP_Handle->ptp.op_container.code = req->Code;
  MTP_Handle->ptp.op_container.trans_id = req->Transaction_ID;
  MTP_Handle->ptp.op_container.param1 = req->Param1;
  MTP_Handle->ptp.op_container.param2 = req->Param2;
  MTP_Handle->ptp.op_container.param3 = req->Param3;
  MTP_Handle->ptp.op_container.param4 = req->Param4;
  MTP_Handle->ptp.op_container.param5 = req->Param5;

  return status;
}
