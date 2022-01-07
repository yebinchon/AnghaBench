
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GPIOB ;
 int puth (int) ;
 int puts (char*) ;
 int set_gpio_output (int ,int,int) ;

void pedal_enable_can_transciever(uint8_t transciever, bool enabled) {
  switch (transciever){
    case 1:
      set_gpio_output(GPIOB, 3, !enabled);
      break;
    default:
      puts("Invalid CAN transciever ("); puth(transciever); puts("): enabling failed\n");
      break;
  }
}
