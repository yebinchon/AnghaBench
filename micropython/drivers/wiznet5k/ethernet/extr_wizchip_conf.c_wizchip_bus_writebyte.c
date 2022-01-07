
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ ptrdiff_t ;



void wizchip_bus_writebyte(uint32_t AddrSel, uint8_t wb) { *((volatile uint8_t*)((ptrdiff_t)AddrSel)) = wb; }
