
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* Pin; int Pull; int Mode; int Speed; } ;
typedef TYPE_1__ GPIO_InitTypeDef ;


 int GPIOB ;
 int GPIO_MODE_OUTPUT_PP ;
 void* GPIO_PIN_1 ;
 void* GPIO_PIN_2 ;
 int GPIO_PIN_SET ;
 int GPIO_PULLUP ;
 int GPIO_SPEED_FREQ_VERY_HIGH ;
 int HAL_GPIO_Init (int ,TYPE_1__*) ;
 int HAL_GPIO_WritePin (int ,void*,int ) ;
 int __HAL_RCC_GPIOB_CLK_ENABLE () ;

void NETDUINO_PLUS_2_board_early_init(void) {

    __HAL_RCC_GPIOB_CLK_ENABLE();


    GPIO_InitTypeDef GPIO_InitStructure;
    GPIO_InitStructure.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStructure.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStructure.Pull = GPIO_PULLUP;
    GPIO_InitStructure.Pin = GPIO_PIN_2;
    HAL_GPIO_Init(GPIOB, &GPIO_InitStructure);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_SET);
}
