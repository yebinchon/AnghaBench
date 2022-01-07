
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* Itf_Desc; } ;
struct TYPE_8__ {TYPE_2__ CfgDesc; } ;
struct TYPE_9__ {TYPE_3__ device; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_6__ {int bInterfaceClass; } ;



uint8_t USBH_GetActiveClass(USBH_HandleTypeDef *phost)
{
   return (phost->device.CfgDesc.Itf_Desc[0].bInterfaceClass);
}
