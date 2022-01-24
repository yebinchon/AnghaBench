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
struct lwan_lua_method_info {int /*<<< orphan*/ * func; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  lwan_lua_method ;
struct TYPE_3__ {int /*<<< orphan*/ * func; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ luaL_reg ;

/* Variables and functions */
 struct lwan_lua_method_info* __start_lwan_lua_method ; 
 struct lwan_lua_method_info const* __stop_lwan_lua_method ; 
 int /*<<< orphan*/  lua_methods ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) __attribute__((constructor))
__attribute__((no_sanitize_address))
static void FUNC2(void)
{
    extern const struct lwan_lua_method_info FUNC3(lwan_lua_method);
    extern const struct lwan_lua_method_info FUNC4(lwan_lua_method);
    const struct lwan_lua_method_info *info;
    luaL_reg *r;

    for (info = __start_lwan_lua_method; info < __stop_lwan_lua_method;
         info++) {
        r = FUNC0(&lua_methods);
        if (!r) {
            FUNC1("Could not register Lua method `%s`",
                                 info->name);
        }

        r->name = info->name;
        r->func = info->func;
    }

    r = FUNC0(&lua_methods);
    if (!r)
        FUNC1("Could not add Lua method sentinel");

    r->name = NULL;
    r->func = NULL;
}