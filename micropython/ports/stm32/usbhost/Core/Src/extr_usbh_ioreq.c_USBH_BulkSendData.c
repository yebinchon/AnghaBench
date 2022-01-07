
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_5__ {scalar_t__ speed; } ;
struct TYPE_6__ {TYPE_1__ device; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;


 int USBH_EP_BULK ;
 int USBH_LL_SubmitURB (TYPE_2__*,scalar_t__,int ,int ,int ,scalar_t__*,int ,scalar_t__) ;
 int USBH_OK ;
 int USBH_PID_DATA ;
 scalar_t__ USBH_SPEED_HIGH ;

USBH_StatusTypeDef USBH_BulkSendData (USBH_HandleTypeDef *phost,
                                uint8_t *buff,
                                uint16_t length,
                                uint8_t pipe_num,
                                uint8_t do_ping )
{
  if(phost->device.speed != USBH_SPEED_HIGH)
  {
    do_ping = 0;
  }

  USBH_LL_SubmitURB (phost,
                          pipe_num,
                          0,
                          USBH_EP_BULK,
                          USBH_PID_DATA,
                          buff,
                          length,
                          do_ping);
  return USBH_OK;
}
