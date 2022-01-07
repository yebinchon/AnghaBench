
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int pgm_read_byte (int ) ;
 int rn42_putc (int ) ;

void rn42_send_str(const char *str)
{
    uint8_t c;
    while ((c = pgm_read_byte(str++)))
        rn42_putc(c);
}
