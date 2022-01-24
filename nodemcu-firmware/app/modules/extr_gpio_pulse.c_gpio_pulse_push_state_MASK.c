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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ expected_end_time; scalar_t__ active_pos; scalar_t__ steps; scalar_t__ entry_count; } ;
typedef  TYPE_1__ pulse_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 

__attribute__((used)) static int FUNC3(lua_State *L, pulse_t *pulser) {
  uint32_t now;
  uint32_t expected_end_time;
  uint32_t active_pos;
  uint32_t steps;
  do {
    now = 0x7FFFFFFF & FUNC2();
    expected_end_time = pulser->expected_end_time;
    active_pos = pulser->active_pos;
    steps = pulser->steps;
  } while (expected_end_time != pulser->expected_end_time ||
           active_pos != pulser->active_pos ||
           steps != pulser->steps);

  if (active_pos >= pulser->entry_count) {
    FUNC1(L);
  } else {
    FUNC0(L, active_pos + 1);    // Lua is 1 offset
  }
  FUNC0(L, steps);

  int32_t diff = (expected_end_time - now) & 0x7fffffff;
  FUNC0(L, (diff << 1) >> 1);
  FUNC0(L, now);
  return 4;
}