
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int DDRD ;
 int DDRE ;
 int DDRF ;

__attribute__((used)) static void init_ports(void)
{

    DDRD &= 0b11010000;
    DDRB &= 0b01111111;
    DDRE &= 0b11111011;


    DDRF |= 0b00000011;
    DDRC |= 0b11000000;
    DDRB |= 0b01110001;
    DDRD |= 0b10000000;
}
