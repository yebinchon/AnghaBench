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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/  timer_ref; int /*<<< orphan*/  timer; int /*<<< orphan*/  i2c_addr; } ;
typedef  TYPE_1__ ads_ctrl_ud_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADS1115_POINTER_CONVERSION ; 
 int /*<<< orphan*/  LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void * param) {
    ads_ctrl_ud_t * ads_ctrl = (ads_ctrl_ud_t *)param;
    uint16_t raw = FUNC6(ads_ctrl->i2c_addr, ADS1115_POINTER_CONVERSION);
    lua_State *L = FUNC2();
    FUNC4(&ads_ctrl->timer);
    FUNC3(L, LUA_REGISTRYINDEX, ads_ctrl->timer_ref);
    FUNC0(L, LUA_REGISTRYINDEX, ads_ctrl->timer_ref);
    ads_ctrl->timer_ref = LUA_NOREF;
    FUNC5(ads_ctrl, raw, L);
    FUNC1(L, 4, 0);
}