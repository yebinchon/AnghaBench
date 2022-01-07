
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLUE_LED ;
 int GREEN_LED ;
 int RED_LED ;
 int matrix_init_user () ;
 int setPinOutput (int ) ;

void matrix_init_kb(void)
{
    matrix_init_user();

    setPinOutput(RED_LED);
    setPinOutput(BLUE_LED);
    setPinOutput(GREEN_LED);
}
