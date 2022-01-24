#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  scalar_t__ task_param_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {scalar_t__ cb_vu_ref; scalar_t__ self_ref; scalar_t__ vu_peak; } ;
typedef  TYPE_1__ cfg_t ;
typedef  int /*<<< orphan*/  LUA_NUMBER ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4( task_param_t param, uint8 prio )
{
  cfg_t *cfg = (cfg_t *)param;
  lua_State *L = FUNC1();

  if (cfg->cb_vu_ref != LUA_NOREF) {
    FUNC3( L, LUA_REGISTRYINDEX, cfg->cb_vu_ref );
    FUNC3( L, LUA_REGISTRYINDEX, cfg->self_ref );
    FUNC2( L, (LUA_NUMBER)(cfg->vu_peak) );
    FUNC0( L, 2, 0 );
  }
}