
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int usb_serial_getchar () ;

int usb_vcp_recv_byte(uint8_t *ptr)
{
  int ch = usb_serial_getchar();
  if (ch < 0) {
    return 0;
  }
  *ptr = ch;
  return 1;
}
