
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_8__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_7__ {int req_state; int state; } ;
struct TYPE_9__ {TYPE_2__ ptp; } ;
struct TYPE_6__ {TYPE_4__* pData; } ;
typedef TYPE_4__ MTP_HandleTypeDef ;


 int PTP_IDLE ;
 int PTP_REQ_SEND ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_PTP_Init(USBH_HandleTypeDef *phost)
{
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;


  MTP_Handle->ptp.state = PTP_IDLE;
  MTP_Handle->ptp.req_state = PTP_REQ_SEND;

  return USBH_OK;
}
