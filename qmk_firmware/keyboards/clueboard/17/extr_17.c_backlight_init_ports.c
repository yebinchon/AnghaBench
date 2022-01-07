
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRC ;
 int OCR4C ;
 int TC4H ;
 int TCCR4A ;
 int TCCR4B ;

void backlight_init_ports(void) {

    DDRC |= (1<<7);


    TC4H = 0x03;
    OCR4C = 0xFF;
    TCCR4A = 0b10000010;
    TCCR4B = 0b00000001;
}
