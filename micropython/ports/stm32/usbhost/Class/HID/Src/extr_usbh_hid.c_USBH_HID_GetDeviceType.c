
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* Itf_Desc; } ;
struct TYPE_7__ {size_t current_interface; TYPE_3__ CfgDesc; } ;
struct TYPE_9__ {scalar_t__ gState; TYPE_2__ device; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_6__ {scalar_t__ bInterfaceProtocol; } ;
typedef int HID_TypeTypeDef ;


 int HID_KEYBOARD ;
 scalar_t__ HID_KEYBRD_BOOT_CODE ;
 int HID_MOUSE ;
 scalar_t__ HID_MOUSE_BOOT_CODE ;
 int HID_UNKNOWN ;
 scalar_t__ HOST_CLASS ;

HID_TypeTypeDef USBH_HID_GetDeviceType(USBH_HandleTypeDef *phost)
{
  HID_TypeTypeDef type = HID_UNKNOWN;

  if(phost->gState == HOST_CLASS)
  {

    if(phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].bInterfaceProtocol == HID_KEYBRD_BOOT_CODE)

    {
      type = HID_KEYBOARD;
    }
    else if(phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].bInterfaceProtocol == HID_MOUSE_BOOT_CODE)

    {
      type= HID_MOUSE;
    }
  }
  return type;
}
