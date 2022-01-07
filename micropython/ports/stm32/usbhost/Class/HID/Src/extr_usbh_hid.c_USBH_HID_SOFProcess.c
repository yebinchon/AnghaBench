
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_6__ {scalar_t__ Timer; int os_event; TYPE_1__* pActiveClass; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_7__ {scalar_t__ state; scalar_t__ timer; scalar_t__ poll; } ;
struct TYPE_5__ {TYPE_3__* pData; } ;
typedef TYPE_3__ HID_HandleTypeDef ;


 scalar_t__ HID_GET_DATA ;
 scalar_t__ HID_POLL ;
 int USBH_OK ;
 int USBH_URB_EVENT ;
 int osMessagePut (int ,int ,int ) ;

__attribute__((used)) static USBH_StatusTypeDef USBH_HID_SOFProcess(USBH_HandleTypeDef *phost)
{
  HID_HandleTypeDef *HID_Handle = phost->pActiveClass->pData;

  if(HID_Handle->state == HID_POLL)
  {
    if(( phost->Timer - HID_Handle->timer) >= HID_Handle->poll)
    {
      HID_Handle->state = HID_GET_DATA;



    }
  }
  return USBH_OK;
}
