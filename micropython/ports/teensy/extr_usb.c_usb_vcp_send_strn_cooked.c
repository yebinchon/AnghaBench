
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usb_serial_putchar (char const) ;

void usb_vcp_send_strn_cooked(const char *str, int len)
{
  for (const char *top = str + len; str < top; str++) {
    if (*str == '\n') {
      usb_serial_putchar('\r');
    }
    usb_serial_putchar(*str);
  }
}
