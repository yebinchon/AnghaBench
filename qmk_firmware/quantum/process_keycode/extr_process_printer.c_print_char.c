
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USB_Disable () ;
 int USB_Init () ;
 int serial_send (char) ;

void print_char(char c) {
    USB_Disable();
    serial_send(c);
    USB_Init();
}
