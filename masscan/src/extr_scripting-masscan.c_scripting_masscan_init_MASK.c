#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lua_State {int dummy; } ;
struct MasscanWrapper {struct Masscan* masscan; } ;
struct TYPE_4__ {struct lua_State* L; } ;
struct Masscan {TYPE_1__ scripting; } ;
struct TYPE_5__ {char* member_0; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_2__ luaL_Reg ;

/* Variables and functions */
 int /*<<< orphan*/  MASSCAN_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct lua_State*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lua_State*,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lua_State*,int /*<<< orphan*/ ) ; 
 struct MasscanWrapper* FUNC3 (struct lua_State*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lua_State*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lua_State*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lua_State*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct lua_State*,char*) ; 
#define  mass_gc 129 
#define  mass_setconfig 128 
 int /*<<< orphan*/  FUNC8 (struct MasscanWrapper*,int /*<<< orphan*/ ,int) ; 

void FUNC9(struct Masscan *masscan)
{
    struct MasscanWrapper *wrapper;
    struct lua_State *L = masscan->scripting.L;

    static const luaL_Reg my_methods[] = {
        {"setconfig",   mass_setconfig},
        {"__gc",        mass_gc},
        {NULL, NULL}
    };

    /*
     * Lua: Create a class to wrap a 'socket'
     */
    
    FUNC0(L, MASSCAN_CLASS);
    FUNC5(L, -1);
    FUNC6(L, -2, "__index");
    FUNC1(L, my_methods, 0);
    FUNC4(L, 1);
    
    /* Lua: create a  wrapper object and push it onto the stack */
    wrapper = FUNC3(L, sizeof(*wrapper));
    FUNC8(wrapper, 0, sizeof(*wrapper));
    wrapper->masscan = masscan;
    
    /* Lua: set the class/type */
    FUNC2(L, MASSCAN_CLASS);
    
    FUNC7(L, "Masscan");
    
}