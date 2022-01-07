
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int * Instance; } ;
struct TYPE_6__ {int uart_id; int is_enabled; TYPE_4__ uart; } ;
typedef TYPE_1__ pyb_uart_obj_t ;
typedef int USART_TypeDef ;
struct TYPE_7__ {int Pin; int Alternate; int Pull; int Mode; int Speed; } ;
typedef int GPIO_TypeDef ;
typedef TYPE_2__ GPIO_InitTypeDef ;


 int * GPIOA ;
 int * GPIOB ;
 int * GPIOC ;
 int * GPIOD ;
 int GPIO_AF7_USART1 ;
 int GPIO_AF7_USART2 ;
 int GPIO_AF7_USART3 ;
 int GPIO_AF8_UART4 ;
 int GPIO_AF8_USART6 ;
 int GPIO_MODE_AF_PP ;
 int GPIO_PIN_0 ;
 int GPIO_PIN_1 ;
 int GPIO_PIN_10 ;
 int GPIO_PIN_11 ;
 int GPIO_PIN_2 ;
 int GPIO_PIN_3 ;
 int GPIO_PIN_6 ;
 int GPIO_PIN_7 ;
 int GPIO_PIN_8 ;
 int GPIO_PIN_9 ;
 int GPIO_PULLUP ;
 int GPIO_SPEED_HIGH ;
 int HAL_GPIO_Init (int *,TYPE_2__*) ;
 int HAL_UART_Init (TYPE_4__*) ;





 int * UART4 ;
 int * USART1 ;
 int * USART2 ;
 int * USART3 ;
 int * USART6 ;
 int __UART4_CLK_ENABLE () ;
 int __USART1_CLK_ENABLE () ;
 int __USART2_CLK_ENABLE () ;
 int __USART3_CLK_ENABLE () ;
 int __USART6_CLK_ENABLE () ;

bool uart_init2(pyb_uart_obj_t *uart_obj) {
    return 1;
}
