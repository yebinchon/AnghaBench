
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_8__ {scalar_t__ is_connected; } ;
struct TYPE_9__ {scalar_t__ Timer; TYPE_2__ device; TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_10__ {scalar_t__ is_ready; } ;
struct TYPE_7__ {TYPE_4__* pData; } ;
typedef TYPE_4__ MTP_HandleTypeDef ;


 int USBH_BUSY ;
 int USBH_FAIL ;
 int USBH_PTP_DeleteObject (TYPE_3__*,scalar_t__,scalar_t__) ;

USBH_StatusTypeDef USBH_MTP_DeleteObject (USBH_HandleTypeDef *phost,
                                          uint32_t handle,
                                          uint32_t objectformatcode)
{
  USBH_StatusTypeDef status = USBH_FAIL;
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;
  uint32_t timeout = phost->Timer + 5000;

  if(MTP_Handle->is_ready)
  {
    while ((status = USBH_PTP_DeleteObject (phost, handle, objectformatcode)) == USBH_BUSY)
    {
      if((phost->Timer > timeout) || (phost->device.is_connected == 0))
      {
        return USBH_FAIL;
      }
    }
  }
  return status;
}
