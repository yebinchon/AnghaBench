
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int IMR; int EMR; int RTSR; int FTSR; } ;
struct TYPE_11__ {int* EXTICR; } ;
struct TYPE_10__ {int Pin; int Mode; scalar_t__ Pull; int Alternate; scalar_t__ Speed; } ;
struct TYPE_9__ {int PDDR; } ;
typedef TYPE_1__ GPIO_TypeDef ;
typedef TYPE_2__ GPIO_InitTypeDef ;


 TYPE_8__* EXTI ;
 int EXTI_MODE ;
 int FALLING_EDGE ;
 int GPIO_MODE_AF_OD ;
 int GPIO_MODE_AF_PP ;
 int GPIO_MODE_ANALOG ;
 int GPIO_MODE_EVT ;
 int GPIO_MODE_INPUT ;
 int GPIO_MODE_IT ;
 int GPIO_MODE_OUTPUT_OD ;
 int GPIO_MODE_OUTPUT_PP ;
 scalar_t__ GPIO_NOPULL ;
 int GPIO_NUMBER ;
 int GPIO_OUTPUT_TYPE ;
 int* GPIO_PIN_TO_PORT_PCR (TYPE_1__*,int) ;
 scalar_t__ GPIO_PULLDOWN ;
 scalar_t__ GPIO_SPEED_FREQ_MEDIUM ;
 int IS_GPIO_AF (int) ;
 int IS_GPIO_MODE (int) ;
 int IS_GPIO_PIN (int) ;
 int IS_GPIO_PULL (scalar_t__) ;
 int IS_GPIO_SPEED (scalar_t__) ;
 int volatile PORT_PCR_DSE ;
 int volatile PORT_PCR_MUX (int) ;
 int volatile PORT_PCR_MUX_MASK ;
 int volatile PORT_PCR_ODE ;
 int volatile PORT_PCR_PE ;
 int volatile PORT_PCR_PS ;
 int volatile PORT_PCR_SRE ;
 int RISING_EDGE ;
 TYPE_4__* SYSCFG ;
 scalar_t__ __HAL_GET_GPIO_SOURCE (TYPE_1__*) ;
 int __SYSCFG_CLK_ENABLE () ;
 int assert_param (int ) ;
 int iocurrent ;
 int temp ;

void HAL_GPIO_Init(GPIO_TypeDef *GPIOx, GPIO_InitTypeDef *GPIO_Init)
{

    assert_param(IS_GPIO_PIN(GPIO_Init->Pin));
    assert_param(IS_GPIO_MODE(GPIO_Init->Mode));
    assert_param(IS_GPIO_PULL(GPIO_Init->Pull));


    for (uint32_t position = 0; position < GPIO_NUMBER; position++) {
        uint32_t bitmask = 1 << position;
        if ((GPIO_Init->Pin & bitmask) == 0) {
            continue;
        }
        volatile uint32_t *port_pcr = GPIO_PIN_TO_PORT_PCR(GPIOx, position);



        if ((GPIO_Init->Mode == GPIO_MODE_AF_PP) || (GPIO_Init->Mode == GPIO_MODE_AF_OD)) {

            assert_param(IS_GPIO_AF(GPIO_Init->Alternate));
        }
        else if (GPIO_Init->Mode == GPIO_MODE_ANALOG) {
            GPIO_Init->Alternate = 0;
        }
        else {
            GPIO_Init->Alternate = 1;
        }


        *port_pcr &= ~PORT_PCR_MUX_MASK;
        *port_pcr |= PORT_PCR_MUX(GPIO_Init->Alternate);


        if (GPIO_Init->Mode == GPIO_MODE_INPUT || GPIO_Init->Mode == GPIO_MODE_ANALOG) {
            GPIOx->PDDR &= ~bitmask;
        } else {
            GPIOx->PDDR |= bitmask;
        }


        if ((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) || (GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
            (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) || (GPIO_Init->Mode == GPIO_MODE_AF_OD)) {

            assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));

            *port_pcr |= PORT_PCR_DSE;


            if (GPIO_Init->Speed > GPIO_SPEED_FREQ_MEDIUM) {
                *port_pcr &= ~PORT_PCR_SRE;
            } else {
                *port_pcr |= PORT_PCR_SRE;
            }


            if (GPIO_Init->Mode & GPIO_OUTPUT_TYPE) {
                *port_pcr |= PORT_PCR_ODE;
            } else {
                *port_pcr &= ~PORT_PCR_ODE;
            }
        } else {
            *port_pcr &= ~PORT_PCR_DSE;
        }


        if (GPIO_Init->Pull == GPIO_NOPULL) {
            *port_pcr &= ~PORT_PCR_PE;
        } else {
            *port_pcr |= PORT_PCR_PE;
            if (GPIO_Init->Pull == GPIO_PULLDOWN) {
                *port_pcr &= ~PORT_PCR_PS;
            } else {
                *port_pcr |= PORT_PCR_PS;
            }
        }
    }
}
