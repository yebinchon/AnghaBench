
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COM3A0 ;
 int COM3A1 ;
 int CS30 ;
 int CS31 ;
 int CS32 ;
 int DDRC ;
 int PORTC6 ;
 int TCCR3A ;
 int TCCR3B ;
 int WGM30 ;
 int WGM31 ;
 int WGM32 ;
 int WGM33 ;
 int _BV (int ) ;

void fauxclicky_init() {

    DDRC |= _BV(PORTC6);


    TCCR3A = (0 << COM3A1) | (0 << COM3A0) | (1 << WGM31) | (0 << WGM30);
    TCCR3B = (1 << WGM33) | (1 << WGM32) | (0 << CS32) | (1 << CS31) | (0 << CS30);
}
