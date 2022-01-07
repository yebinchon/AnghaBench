
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int serial_send (int ) ;

void rn42_putc(uint8_t c)
{
    serial_send(c);
}
