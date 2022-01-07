
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOB ;
 int PAL_MODE_INPUT_PULLUP ;
 int palSetPadMode (int ,int,int ) ;

__attribute__((used)) static void init_cols(void) {
  palSetPadMode(GPIOB, 0, PAL_MODE_INPUT_PULLUP);
  palSetPadMode(GPIOB, 1, PAL_MODE_INPUT_PULLUP);
  palSetPadMode(GPIOB, 2, PAL_MODE_INPUT_PULLUP);
  palSetPadMode(GPIOB, 3, PAL_MODE_INPUT_PULLUP);
  palSetPadMode(GPIOB, 4, PAL_MODE_INPUT_PULLUP);
  palSetPadMode(GPIOB, 5, PAL_MODE_INPUT_PULLUP);
}
