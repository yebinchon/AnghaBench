
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int OSPEEDR; scalar_t__* AFR; scalar_t__ PUPDR; scalar_t__ ODR; } ;


 TYPE_1__* GPIOA ;
 TYPE_1__* GPIOB ;
 int GPIOC ;
 int GPIO_AF10_OTG_FS ;
 int GPIO_AF7_USART1 ;
 int GPIO_AF8_CAN1 ;
 int GPIO_AF9_CAN1 ;
 int GPIO_OSPEEDER_OSPEEDR11 ;
 int GPIO_OSPEEDER_OSPEEDR12 ;
 int MODE_ANALOG ;
 int set_gpio_alternate (TYPE_1__*,int,int ) ;
 int set_gpio_mode (int ,int,int ) ;

void common_init_gpio(void){



  GPIOA->ODR = 0;
  GPIOB->ODR = 0;
  GPIOA->PUPDR = 0;
  GPIOB->AFR[0] = 0;
  GPIOB->AFR[1] = 0;


  set_gpio_mode(GPIOC, 2, MODE_ANALOG);


  set_gpio_alternate(GPIOA, 11, GPIO_AF10_OTG_FS);
  set_gpio_alternate(GPIOA, 12, GPIO_AF10_OTG_FS);
  GPIOA->OSPEEDR = GPIO_OSPEEDER_OSPEEDR11 | GPIO_OSPEEDER_OSPEEDR12;


  set_gpio_alternate(GPIOA, 9, GPIO_AF7_USART1);
  set_gpio_alternate(GPIOA, 10, GPIO_AF7_USART1);






    set_gpio_alternate(GPIOB, 8, GPIO_AF9_CAN1);
    set_gpio_alternate(GPIOB, 9, GPIO_AF9_CAN1);

}
