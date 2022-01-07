
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void port_byte_out (unsigned short port, unsigned char data) {





    __asm__("out %%al, %%dx" : : "a" (data), "d" (port));
}
