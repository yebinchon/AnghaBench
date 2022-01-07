
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int matrix_row_t ;


 int GPIOA ;
 int GPIOB ;
 int GPIOC ;
 int GPIOD ;
 int MATRIX_ROWS ;
 int PAL_MODE_INPUT_PULLDOWN ;
 int PAL_MODE_OUTPUT_PUSHPULL ;
 int matrix ;
 int matrix_debouncing ;
 int memset (int ,int ,int) ;
 int palSetPadMode (int ,int,int ) ;

void matrix_init(void)
{


    palSetPadMode(GPIOA, 15, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOC, 10, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOC, 11, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOC, 12, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOD, 2, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOB, 3, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOB, 4, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOB, 5, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOB, 6, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOB, 7, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOB, 8, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOB, 9, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOA, 2, PAL_MODE_INPUT_PULLDOWN);
    palSetPadMode(GPIOA, 3, PAL_MODE_INPUT_PULLDOWN);


    palSetPadMode(GPIOB, 11, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB, 10, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB, 2, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB, 1, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOB, 0, PAL_MODE_OUTPUT_PUSHPULL);

    memset(matrix, 0, MATRIX_ROWS * sizeof(matrix_row_t));
    memset(matrix_debouncing, 0, MATRIX_ROWS * sizeof(matrix_row_t));
}
