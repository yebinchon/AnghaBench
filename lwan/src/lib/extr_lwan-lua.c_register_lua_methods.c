
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lwan_lua_method_info {int * func; int * name; } ;
typedef int lwan_lua_method ;
struct TYPE_3__ {int * func; int * name; } ;
typedef TYPE_1__ luaL_reg ;


 struct lwan_lua_method_info* __start_lwan_lua_method ;
 struct lwan_lua_method_info const* __stop_lwan_lua_method ;
 int lua_methods ;
 TYPE_1__* lwan_lua_method_array_append (int *) ;
 int lwan_status_critical (char*,...) ;

__attribute__((used)) __attribute__((constructor))
__attribute__((no_sanitize_address))
static void register_lua_methods(void)
{
    extern const struct lwan_lua_method_info SECTION_START(lwan_lua_method);
    extern const struct lwan_lua_method_info SECTION_END(lwan_lua_method);
    const struct lwan_lua_method_info *info;
    luaL_reg *r;

    for (info = __start_lwan_lua_method; info < __stop_lwan_lua_method;
         info++) {
        r = lwan_lua_method_array_append(&lua_methods);
        if (!r) {
            lwan_status_critical("Could not register Lua method `%s`",
                                 info->name);
        }

        r->name = info->name;
        r->func = info->func;
    }

    r = lwan_lua_method_array_append(&lua_methods);
    if (!r)
        lwan_status_critical("Could not add Lua method sentinel");

    r->name = ((void*)0);
    r->func = ((void*)0);
}
