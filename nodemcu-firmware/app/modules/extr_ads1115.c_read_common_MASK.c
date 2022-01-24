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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/  gain; } ;
typedef  TYPE_1__ ads_ctrl_ud_t ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double) ; 

__attribute__((used)) static void FUNC4(ads_ctrl_ud_t * ads_ctrl, uint16_t raw, lua_State *L) {
    double mvolt = FUNC0(ads_ctrl->gain, raw);
#ifdef LUA_NUMBER_INTEGRAL
    int sign;
    if (mvolt == 0) {
        sign = 0;
    } else if (mvolt > 0) {
        sign = 1;
    } else {
        sign = -1;
    }
    int uvolt;
    if (sign >= 0) {
        uvolt = (int)((mvolt - (int)mvolt) * 1000 + 0.5);
    } else {
        uvolt = -(int)((mvolt - (int)mvolt) * 1000 - 0.5);
        mvolt = -mvolt;
    }
    lua_pushnumber(L, mvolt);
    lua_pushinteger(L, uvolt);
    lua_pushinteger(L, raw);
    lua_pushinteger(L, sign);
#else
    FUNC3(L, mvolt);
    FUNC2(L);
    FUNC1(L, raw);
    FUNC2(L);
#endif
}