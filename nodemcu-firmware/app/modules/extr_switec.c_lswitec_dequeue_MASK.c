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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int SWITEC_CHANNEL_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__* stopped_callback ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(lua_State* L)
{
  int id;

  for (id = 0; id < SWITEC_CHANNEL_COUNT; id++) {
    if (stopped_callback[id] != LUA_NOREF) {
      int32_t pos;
      int32_t dir;
      int32_t target;
      if (!FUNC1( id, &pos, &dir, &target )) {
	if (dir == 0 && pos == target) {
	  FUNC0(L, id);
	}
      }
    }
  }

  return 0;
}