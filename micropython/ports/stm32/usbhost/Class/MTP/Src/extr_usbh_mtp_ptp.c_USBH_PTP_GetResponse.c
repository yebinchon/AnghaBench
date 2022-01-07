
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


typedef int USBH_StatusTypeDef ;
struct TYPE_12__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_10__ {int param5; int param4; int param3; int param2; int param1; int trans_id; int code; } ;
struct TYPE_11__ {TYPE_2__ resp_container; int session_id; } ;
struct TYPE_14__ {TYPE_3__ ptp; } ;
struct TYPE_13__ {int Param5; int Param4; int Param3; int Param2; int Param1; int Transaction_ID; int SessionID; int Code; } ;
struct TYPE_9__ {TYPE_6__* pData; } ;
typedef TYPE_5__ PTP_ContainerTypedef ;
typedef TYPE_6__ MTP_HandleTypeDef ;


 int USBH_OK ;

USBH_StatusTypeDef USBH_PTP_GetResponse (USBH_HandleTypeDef *phost, PTP_ContainerTypedef *resp)
{
  USBH_StatusTypeDef status = USBH_OK;
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;


  resp->Code = MTP_Handle->ptp.resp_container.code;
  resp->SessionID = MTP_Handle->ptp.session_id;
  resp->Transaction_ID = MTP_Handle->ptp.resp_container.trans_id;
  resp->Param1 = MTP_Handle->ptp.resp_container.param1;
  resp->Param2 = MTP_Handle->ptp.resp_container.param2;
  resp->Param3 = MTP_Handle->ptp.resp_container.param3;
  resp->Param4 = MTP_Handle->ptp.resp_container.param4;
  resp->Param5 = MTP_Handle->ptp.resp_container.param5;

  return status;
}
