
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int usb_vcp_send_strn (char const*,int ) ;

void usb_vcp_send_str(const char* str)
{
  usb_vcp_send_strn(str, strlen(str));
}
