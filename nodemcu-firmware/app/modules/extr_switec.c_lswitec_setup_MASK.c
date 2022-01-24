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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  PLATFORM_GPIO_OUTPUT ; 
 int /*<<< orphan*/  PLATFORM_GPIO_PULLUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int* pin_num ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  switec ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasknumber ; 

__attribute__((used)) static int FUNC9( lua_State* L )
{
  unsigned int id;

  id = FUNC2( L, 1 );
  FUNC0( switec, id );
  int pin[4];

  if (FUNC7(id)) {
    return FUNC3( L, "Unable to setup stepper." );
  }

  int i;
  for (i = 0; i < 4; i++) {
    uint32_t gpio = FUNC2(L, 2 + i);

    FUNC1(L, FUNC5(gpio), 2 + i, "Invalid pin");

    pin[i] = pin_num[gpio];

    FUNC6(gpio, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_PULLUP);
  }

  int deg_per_sec = 0;
  if (FUNC4(L) >= 6) {
    deg_per_sec = FUNC2(L, 6);
  }

  if (FUNC8(id, pin, deg_per_sec, tasknumber)) {
    return FUNC3(L, "Unable to setup stepper.");
  }
  return 0;
}