
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_5__ {int is_connected; } ;
struct TYPE_6__ {scalar_t__ gState; TYPE_1__ device; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;


 scalar_t__ HOST_CLASS ;
 int USBH_OK ;
 int USBH_TEMPLATE_Process (TYPE_2__*) ;

USBH_StatusTypeDef USBH_TEMPLATE_IOProcess (USBH_HandleTypeDef *phost)
{
  if (phost->device.is_connected == 1)
  {
    if(phost->gState == HOST_CLASS)
    {
      USBH_TEMPLATE_Process(phost);
    }
  }

  return USBH_OK;
}
