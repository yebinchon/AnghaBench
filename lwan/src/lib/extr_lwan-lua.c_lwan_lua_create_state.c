
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 scalar_t__ UNLIKELY (int) ;
 scalar_t__ luaL_dofile (int *,char const*) ;
 scalar_t__ luaL_dostring (int *,char const*) ;
 int luaL_newmetatable (int *,int ) ;
 int * luaL_newstate () ;
 int luaL_openlibs (int *) ;
 int luaL_register (int *,int *,int ) ;
 int lua_close (int *) ;
 TYPE_2__ lua_methods ;
 int lua_setfield (int *,int,char*) ;
 int lua_tostring (int *,int) ;
 int lwan_status_error (char*,...) ;
 int request_metatable_name ;

lua_State *lwan_lua_create_state(const char *script_file, const char *script)
{
    lua_State *L;

    L = luaL_newstate();
    if (UNLIKELY(!L))
        return ((void*)0);

    luaL_openlibs(L);

    luaL_newmetatable(L, request_metatable_name);
    luaL_register(L, ((void*)0), lua_methods.base.base);
    lua_setfield(L, -1, "__index");

    if (script_file) {
        if (UNLIKELY(luaL_dofile(L, script_file) != 0)) {
            lwan_status_error("Error opening Lua script %s: %s", script_file,
                              lua_tostring(L, -1));
            goto close_lua_state;
        }
    } else if (script) {
        if (UNLIKELY(luaL_dostring(L, script) != 0)) {
            lwan_status_error("Error evaluating Lua script %s",
                              lua_tostring(L, -1));
            goto close_lua_state;
        }
    } else {
        lwan_status_error("Either file or inline script has to be provided");
        goto close_lua_state;
    }

    return L;

close_lua_state:
    lua_close(L);
    return ((void*)0);
}
