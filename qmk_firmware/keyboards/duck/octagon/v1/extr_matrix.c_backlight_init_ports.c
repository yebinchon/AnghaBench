
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRD ;
 int DDRE ;

void backlight_init_ports(void)
{
    DDRB |= 0b00011111;
    DDRD |= 0b11010000;
    DDRE |= 0b01000000;
}
