
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usb_serial_write (char const*,int) ;

void usb_vcp_send_strn(const char* str, int len)
{
  usb_serial_write(str, len);
}
