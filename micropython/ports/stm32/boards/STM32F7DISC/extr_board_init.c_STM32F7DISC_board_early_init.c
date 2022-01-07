
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Speed; int Pull; int Mode; int Pin; } ;
typedef TYPE_1__ GPIO_InitTypeDef ;


 int GPIOK ;
 int GPIO_MODE_OUTPUT_PP ;
 int GPIO_PIN_3 ;
 int GPIO_PIN_RESET ;
 int GPIO_PULLUP ;
 int GPIO_SPEED_FREQ_VERY_HIGH ;
 int HAL_GPIO_Init (int ,TYPE_1__*) ;
 int HAL_GPIO_WritePin (int ,int ,int ) ;
 int __HAL_RCC_GPIOK_CLK_ENABLE () ;

void STM32F7DISC_board_early_init(void) {
    GPIO_InitTypeDef GPIO_InitStructure;

    __HAL_RCC_GPIOK_CLK_ENABLE();


    GPIO_InitStructure.Pin = GPIO_PIN_3;
    GPIO_InitStructure.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStructure.Pull = GPIO_PULLUP;
    GPIO_InitStructure.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    HAL_GPIO_Init(GPIOK, &GPIO_InitStructure);
    HAL_GPIO_WritePin(GPIOK, GPIO_PIN_3, GPIO_PIN_RESET);
}
