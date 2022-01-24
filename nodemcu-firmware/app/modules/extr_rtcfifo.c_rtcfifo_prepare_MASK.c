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
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 void* RTC_DEFAULT_TAGCOUNT ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,void*) ; 

__attribute__((used)) static int FUNC9 (lua_State *L)
{
  uint32_t sensor_count = RTC_DEFAULT_TAGCOUNT;
  uint32_t interval_us = 0;
  int first = -1, last = -1;

  if (FUNC4 (L, 1))
  {
#ifdef LUA_USE_MODULES_RTCTIME
    lua_getfield (L, 1, "interval_us");
    if (lua_isnumber (L, -1))
      interval_us = lua_tonumber (L, -1);
    lua_pop (L, 1);
#endif

    FUNC1 (L, 1, "sensor_count");
    if (FUNC3 (L, -1))
      sensor_count = FUNC6 (L, -1);
    FUNC5 (L, 1);

    FUNC1 (L, 1, "storage_begin");
    if (FUNC3 (L, -1))
      first = FUNC6 (L, -1);
    FUNC5 (L, 1);
    FUNC1 (L, 1, "storage_end");
    if (FUNC3 (L, -1))
      last = FUNC6 (L, -1);
    FUNC5 (L, 1);
  }
  else if (!FUNC2 (L, 1))
    return FUNC0 (L, "expected table as arg #1");

  FUNC7 (0, interval_us, sensor_count);

  if (first != -1 && last != -1)
    FUNC8 (first, last, sensor_count);

  return 0;
}