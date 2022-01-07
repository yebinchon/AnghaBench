
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



void port_byte_out (u16 port, u8 data) {





    __asm__ __volatile__("out %%al, %%dx" : : "a" (data), "d" (port));
}
