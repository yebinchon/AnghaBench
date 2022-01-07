
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USBH_HandleTypeDef ;
typedef int HID_KEYBD_Info_TypeDef ;


 scalar_t__ USBH_HID_KeybdDecode (int *) ;
 scalar_t__ USBH_OK ;
 int keybd_info ;

HID_KEYBD_Info_TypeDef *USBH_HID_GetKeybdInfo(USBH_HandleTypeDef *phost)
{
  if(USBH_HID_KeybdDecode(phost) == USBH_OK)
 {
  return &keybd_info;
 }
 else
 {
  return ((void*)0);
 }
}
