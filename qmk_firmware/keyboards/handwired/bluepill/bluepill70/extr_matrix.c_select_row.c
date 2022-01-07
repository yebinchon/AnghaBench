
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GPIOA ;
 int GPIOB ;
 int PAL_MODE_OUTPUT_PUSHPULL ;
 int palClearPad (int ,int) ;
 int palSetPadMode (int ,int,int ) ;

__attribute__((used)) static void select_row(uint8_t row){
  (void)row;
  switch (row) {
    case 0:
      palSetPadMode(GPIOB, 9, PAL_MODE_OUTPUT_PUSHPULL);
      palClearPad(GPIOB, 9);
      break;
    case 1:
      palSetPadMode(GPIOB, 8, PAL_MODE_OUTPUT_PUSHPULL);
      palClearPad(GPIOB, 8);
      break;
    case 2:
      palSetPadMode(GPIOB, 7, PAL_MODE_OUTPUT_PUSHPULL);
      palClearPad(GPIOB, 7);
      break;
    case 3:
      palSetPadMode(GPIOB, 6, PAL_MODE_OUTPUT_PUSHPULL);
      palClearPad(GPIOB, 6);
      break;
    case 4:
      palSetPadMode(GPIOB, 5, PAL_MODE_OUTPUT_PUSHPULL);
      palClearPad(GPIOB, 5);
      break;
    case 5:
      palSetPadMode(GPIOA, 4, PAL_MODE_OUTPUT_PUSHPULL);
      palClearPad(GPIOA, 4);
      break;
  }
}
