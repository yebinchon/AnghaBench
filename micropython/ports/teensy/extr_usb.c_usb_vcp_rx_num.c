
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usb_serial_available () ;

int usb_vcp_rx_num(void) {
  return usb_serial_available();
}
