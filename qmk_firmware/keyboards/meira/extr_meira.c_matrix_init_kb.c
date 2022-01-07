
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDTO_500MS ;
 int backlight_set (int) ;
 int debug_enable ;
 int issi_init () ;
 int matrix_init_user () ;
 int print (char*) ;
 int wdt_enable (int ) ;

void matrix_init_kb(void)
{
    debug_enable=1;
    print("meira matrix_init_kb\n");




    backlight_set(5);
    matrix_init_user();
}
