
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
 int set_rgb (int,int,int,int) ;
 int wdt_enable (int ) ;

void matrix_init_kb(void)
{


    matrix_init_user();
    set_rgb(31, 0x00, 0x00, 0x00);
    set_rgb(32, 0xFF, 0x00, 0x00);


    sbi(DDRC, 6);
    cbi(PORTC, 6);
}
