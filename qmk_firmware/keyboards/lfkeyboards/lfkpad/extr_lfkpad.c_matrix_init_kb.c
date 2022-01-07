
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRC ;
 int PORTC ;
 int WDTO_500MS ;
 int cbi (int ,int) ;
 int issi_init () ;
 int matrix_init_user () ;
 int sbi (int ,int) ;
 int wdt_enable (int ) ;

void matrix_init_kb(void)
{
    matrix_init_user();


    sbi(DDRC, 6);
    cbi(PORTC, 6);
}
