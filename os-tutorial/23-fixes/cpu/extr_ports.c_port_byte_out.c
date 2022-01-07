
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



void port_byte_out (uint16_t port, uint8_t data) {





    asm volatile("out %%al, %%dx" : : "a" (data), "d" (port));
}
