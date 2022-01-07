
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOA ;
 int GPIOB ;
 int PAL_MODE_INPUT ;
 int palSetPadMode (int ,int,int ) ;

__attribute__((used)) static void unselect_rows(void){
  palSetPadMode(GPIOB, 9, PAL_MODE_INPUT);
  palSetPadMode(GPIOB, 8, PAL_MODE_INPUT);
  palSetPadMode(GPIOB, 7, PAL_MODE_INPUT);
  palSetPadMode(GPIOB, 6, PAL_MODE_INPUT);
  palSetPadMode(GPIOB, 5, PAL_MODE_INPUT);
  palSetPadMode(GPIOA, 4, PAL_MODE_INPUT);
}
