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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_AS_PIN_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int GPIO_PIN_SOURCE_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int NUM_GPIO ; 
 int /*<<< orphan*/  PLATFORM_GPIO_INPUT ; 
 int /*<<< orphan*/  PLATFORM_GPIO_PULLUP ; 
 int /*<<< orphan*/ * pin_num ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

uint8_t FUNC7( uint8_t pin )
{
  if (pin < 1 || pin > NUM_GPIO)
    return 0;

  FUNC6();

  // set GPIO input mode for this pin
  FUNC5( pin, PLATFORM_GPIO_INPUT, PLATFORM_GPIO_PULLUP );

  // CONNECT GPIO TO PIN PAD
  FUNC4(FUNC1(FUNC0(pin_num[pin])),
                 (FUNC3(FUNC1(FUNC0(pin_num[pin]))) &(~GPIO_PIN_SOURCE_MASK)) |
                 FUNC2( GPIO_AS_PIN_SOURCE ));

  return 1;
}