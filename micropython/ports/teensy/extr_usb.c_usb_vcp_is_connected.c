
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USB_SERIAL_DTR ;
 int USB_SERIAL_RTS ;
 int usb_cdc_line_rtsdtr ;
 scalar_t__ usb_configuration ;

bool usb_vcp_is_connected(void)
{
  return usb_configuration && (usb_cdc_line_rtsdtr & (USB_SERIAL_DTR | USB_SERIAL_RTS));
}
