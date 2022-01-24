#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO_PIN_INTR_DISABLE ; 
 int /*<<< orphan*/  PLATFORM_GPIO_INPUT ; 
 int /*<<< orphan*/  PLATFORM_GPIO_PULLUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pin_num ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int pin)
{
  if (pin >= 0) {
    FUNC1(FUNC0(pin_num[pin]), GPIO_PIN_INTR_DISABLE);
    FUNC2(pin, PLATFORM_GPIO_INPUT, PLATFORM_GPIO_PULLUP);
  }
}