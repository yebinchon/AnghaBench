#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  i2c_addr; } ;
typedef  TYPE_1__ ads_ctrl_ud_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADS1115_POINTER_CONVERSION ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  metatable_name ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(lua_State *L) {
    ads_ctrl_ud_t *ads_ctrl = FUNC0(L, 1, metatable_name);
    uint16_t raw = FUNC2(ads_ctrl->i2c_addr, ADS1115_POINTER_CONVERSION);
    FUNC1(ads_ctrl, raw, L);
    return 4;
}