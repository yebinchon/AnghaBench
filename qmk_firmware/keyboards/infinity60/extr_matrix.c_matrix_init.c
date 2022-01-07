
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int matrix_row_t ;


 int GPIOB ;
 int GPIOC ;
 int GPIOD ;
 int MATRIX_ROWS ;
 int PAL_MODE_INPUT_PULLDOWN ;
 int PAL_MODE_OUTPUT_PUSHPULL ;
 int matrix ;
 int matrix_debouncing ;
 int matrix_init_quantum () ;
 int memset (int ,int ,int) ;
 int palSetPadMode (int ,int,int ) ;

void matrix_init(void)
{

    palSetPadMode(GPIOD, 1, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOD, 2, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOD, 3, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOD, 4, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOD, 5, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOD, 6, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOD, 7, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOB, 0, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB, 1, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB, 2, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB, 3, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB, 16, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB, 17, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOC, 4, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOC, 5, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOD, 0, PAL_MODE_OUTPUT_PUSHPULL);

    memset(matrix, 0, MATRIX_ROWS * sizeof(matrix_row_t));
    memset(matrix_debouncing, 0, MATRIX_ROWS * sizeof(matrix_row_t));

    matrix_init_quantum();
}
