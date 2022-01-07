
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int * state; } ;
typedef int lua_State ;


 int lua_pop (int *,int) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int main_fns ;
 int push_module_table (int *,char*) ;
 int register_package_fns (int *,char*,int ) ;
 int script_get_property ;
 int utils_fns ;

__attribute__((used)) static void add_functions(struct script_ctx *ctx)
{
    lua_State *L = ctx->state;

    register_package_fns(L, "mp", main_fns);

    push_module_table(L, "mp");

    lua_pushinteger(L, 0);
    lua_pushcclosure(L, script_get_property, 1);
    lua_setfield(L, -2, "get_property");

    lua_pushinteger(L, 1);
    lua_pushcclosure(L, script_get_property, 1);
    lua_setfield(L, -2, "get_property_osd");

    lua_pop(L, 1);

    register_package_fns(L, "mp.utils", utils_fns);
}
