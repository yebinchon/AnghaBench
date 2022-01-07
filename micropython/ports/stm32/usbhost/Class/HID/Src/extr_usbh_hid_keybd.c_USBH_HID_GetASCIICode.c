
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int lshift; size_t* keys; scalar_t__ rshift; } ;
typedef TYPE_1__ HID_KEYBD_Info_TypeDef ;


 size_t* HID_KEYBRD_Codes ;
 int * HID_KEYBRD_Key ;
 int * HID_KEYBRD_ShiftKey ;

uint8_t USBH_HID_GetASCIICode(HID_KEYBD_Info_TypeDef *info)
{
  uint8_t output;
  if((info->lshift == 1) || (info->rshift))
  {
  output = HID_KEYBRD_ShiftKey[HID_KEYBRD_Codes[info->keys[0]]];
  }
  else
  {
  output = HID_KEYBRD_Key[HID_KEYBRD_Codes[info->keys[0]]];
  }
  return output;
}
