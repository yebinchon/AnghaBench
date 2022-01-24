#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct TYPE_3__ {unsigned int MODER; } ;
typedef  TYPE_1__ GPIO_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(GPIO_TypeDef *GPIO, unsigned int pin, unsigned int mode) {
  FUNC0();
  uint32_t tmp = GPIO->MODER;
  tmp &= ~(3U << (pin * 2U));
  tmp |= (mode << (pin * 2U));
  GPIO->MODER = tmp;
  FUNC1();
}