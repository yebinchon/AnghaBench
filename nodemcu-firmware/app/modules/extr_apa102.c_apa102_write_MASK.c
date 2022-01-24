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
typedef  size_t uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  PLATFORM_GPIO_FLOAT ; 
 int /*<<< orphan*/  PLATFORM_GPIO_HIGH ; 
 int /*<<< orphan*/  PLATFORM_GPIO_LOW ; 
 int /*<<< orphan*/  PLATFORM_GPIO_OUTPUT ; 
 int /*<<< orphan*/  FUNC2 (int,int,int*,int) ; 
 int /*<<< orphan*/  gpio ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int* pin_num ; 
 int /*<<< orphan*/  FUNC6 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(lua_State* L) {
  uint8_t data_pin = FUNC3(L, 1);
  FUNC1(gpio, data_pin);
  uint32_t alt_data_pin = pin_num[data_pin];

  uint8_t clock_pin = FUNC3(L, 2);
  FUNC1(gpio, clock_pin);
  uint32_t alt_clock_pin = pin_num[clock_pin];

  size_t buf_len;
  const char *buf = FUNC4(L, 3, &buf_len);
  uint32_t nbr_frames = buf_len / 4;

  if (nbr_frames > 100000) {
    return FUNC5(L, "The supplied buffer is too long, and might cause the callback watchdog to bark.");
  }

  // Initialize the output pins
  FUNC6(data_pin, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_FLOAT);
  FUNC0(alt_data_pin, PLATFORM_GPIO_HIGH); // Set pin high
  FUNC6(clock_pin, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_FLOAT);
  FUNC0(alt_clock_pin, PLATFORM_GPIO_LOW); // Set pin low

  // Send the buffers
  FUNC2(alt_data_pin, alt_clock_pin, (uint32_t *) buf, (uint32_t) nbr_frames);
  return 0;
}