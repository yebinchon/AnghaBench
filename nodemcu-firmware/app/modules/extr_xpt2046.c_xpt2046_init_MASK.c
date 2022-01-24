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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int int32_t ;

/* Variables and functions */
 int ADC_MAX ; 
 int CAL_MARGIN ; 
 int CTRL_HI_Y ; 
 int CTRL_LO_SER ; 
 int /*<<< orphan*/  PLATFORM_GPIO_FLOAT ; 
 int /*<<< orphan*/  PLATFORM_GPIO_HIGH ; 
 int /*<<< orphan*/  PLATFORM_GPIO_LOW ; 
 int /*<<< orphan*/  PLATFORM_GPIO_OUTPUT ; 
 void* _cs_pin ; 
 int _height ; 
 void* _irq_pin ; 
 int _width ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6( lua_State* L ) {
  _cs_pin  = FUNC0( L, 1 );
  _irq_pin = FUNC0( L, 2 );
  _height  = FUNC0( L, 3 );
  _width   = FUNC0( L, 4 );
  // set pins correct
  FUNC1(_cs_pin, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_FLOAT );

  FUNC4(
    /*vi1=*/((int32_t)CAL_MARGIN) * ADC_MAX / _width,
    /*vj1=*/((int32_t)CAL_MARGIN) * ADC_MAX / _height,
    /*vi2=*/((int32_t)_width - CAL_MARGIN) * ADC_MAX / _width,
    /*vj2=*/((int32_t)_height - CAL_MARGIN) * ADC_MAX / _height
  );

  // assume spi was inited before with a clockDiv of >=16
  // as higher spi clock speed produced inaccurate results

  // do first powerdown
  FUNC2(_cs_pin, PLATFORM_GPIO_LOW);

  // Issue a throw-away read, with power-down enabled (PD{1,0} == 0b00)
  // Otherwise, ADC is disabled
  FUNC3(1, 8, CTRL_HI_Y | CTRL_LO_SER);
  FUNC5(0); // Flush, just to be sure

  FUNC2(_cs_pin, PLATFORM_GPIO_HIGH);
  return 0;
}