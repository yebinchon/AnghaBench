
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int serial_recv2 () ;

int16_t rn42_getc(void)
{
    return serial_recv2();
}
