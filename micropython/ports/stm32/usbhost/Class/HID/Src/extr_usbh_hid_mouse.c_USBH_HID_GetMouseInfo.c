
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USBH_HandleTypeDef ;
typedef int HID_MOUSE_Info_TypeDef ;


 scalar_t__ USBH_HID_MouseDecode (int *) ;
 scalar_t__ USBH_OK ;
 int mouse_info ;

HID_MOUSE_Info_TypeDef *USBH_HID_GetMouseInfo(USBH_HandleTypeDef *phost)
{
 if(USBH_HID_MouseDecode(phost)== USBH_OK)
 {
  return &mouse_info;
 }
 else
 {
  return ((void*)0);
 }
}
