
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int ICR1 ;
 int OCR1A ;
 int OCR1B ;
 int OCR1C ;
 int PORTC ;
 int TCCR1A ;
 int TCCR1B ;
 int WDTO_500MS ;
 int cbi (int ,int) ;
 int issi_init () ;
 int matrix_init_user () ;
 int sbi (int ,int) ;
 int wdt_enable (int ) ;

void matrix_init_kb(void)
{
    matrix_init_user();



    TCCR1A = 0b11111110;
    TCCR1B = 0b00011001;
    ICR1 = 0xFFFF;

    OCR1C = 0x0000;
    OCR1B = 0x0000;
    OCR1A = 0x0FFF;

    DDRB |= 0b11100000;



    sbi(DDRC, 6);
    cbi(PORTC, 6);
}
