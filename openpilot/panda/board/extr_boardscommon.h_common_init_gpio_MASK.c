#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int OSPEEDR; scalar_t__* AFR; scalar_t__ PUPDR; scalar_t__ ODR; } ;

/* Variables and functions */
 TYPE_1__* GPIOA ; 
 TYPE_1__* GPIOB ; 
 int /*<<< orphan*/  GPIOC ; 
 int /*<<< orphan*/  GPIO_AF10_OTG_FS ; 
 int /*<<< orphan*/  GPIO_AF7_USART1 ; 
 int /*<<< orphan*/  GPIO_AF8_CAN1 ; 
 int /*<<< orphan*/  GPIO_AF9_CAN1 ; 
 int GPIO_OSPEEDER_OSPEEDR11 ; 
 int GPIO_OSPEEDER_OSPEEDR12 ; 
 int /*<<< orphan*/  MODE_ANALOG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC2(void){
  // TODO: Is this block actually doing something???
  // pull low to hold ESP in reset??
  // enable OTG out tied to ground
  GPIOA->ODR = 0;
  GPIOB->ODR = 0;
  GPIOA->PUPDR = 0;
  GPIOB->AFR[0] = 0;
  GPIOB->AFR[1] = 0;

  // C2: Voltage sense line
  FUNC1(GPIOC, 2, MODE_ANALOG);

  // A11,A12: USB
  FUNC0(GPIOA, 11, GPIO_AF10_OTG_FS);
  FUNC0(GPIOA, 12, GPIO_AF10_OTG_FS);
  GPIOA->OSPEEDR = GPIO_OSPEEDER_OSPEEDR11 | GPIO_OSPEEDER_OSPEEDR12;

  // A9,A10: USART 1 for talking to the ESP / GPS
  FUNC0(GPIOA, 9, GPIO_AF7_USART1);
  FUNC0(GPIOA, 10, GPIO_AF7_USART1);

   // B8,B9: CAN 1
  #ifdef STM32F4
    set_gpio_alternate(GPIOB, 8, GPIO_AF8_CAN1);
    set_gpio_alternate(GPIOB, 9, GPIO_AF8_CAN1);
  #else
    FUNC0(GPIOB, 8, GPIO_AF9_CAN1);
    FUNC0(GPIOB, 9, GPIO_AF9_CAN1);
  #endif
}