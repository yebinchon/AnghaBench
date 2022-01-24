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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_GPIO_FLOAT ; 
 int /*<<< orphan*/  PLATFORM_GPIO_INPUT ; 
 int /*<<< orphan*/  PLATFORM_GPIO_OUTPUT ; 
 int /*<<< orphan*/  clk_pin ; 
 int /*<<< orphan*/  data_pin ; 
 int /*<<< orphan*/  gpio ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(lua_State* L) {
  clk_pin = FUNC1(L,1);
  data_pin = FUNC1(L,2);
  FUNC0( gpio, clk_pin );
  FUNC0( gpio, data_pin );

  FUNC2(clk_pin, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_FLOAT);
  FUNC2(data_pin, PLATFORM_GPIO_INPUT, PLATFORM_GPIO_FLOAT);
  FUNC3(clk_pin,1);//put chip to sleep.
  return 0;
}