
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fn_entry {scalar_t__ name; int fn; } ;
typedef int lua_State ;


 int lua_pop (int *,int) ;
 int lua_pushcclosure (int *,int ,int ) ;
 int lua_setfield (int *,int,scalar_t__) ;
 int push_module_table (int *,char*) ;

__attribute__((used)) static void register_package_fns(lua_State *L, char *module,
                                 const struct fn_entry *e)
{
    push_module_table(L, module);
    for (int n = 0; e[n].name; n++) {
        lua_pushcclosure(L, e[n].fn, 0);
        lua_setfield(L, -2, e[n].name);
    }
    lua_pop(L, 1);
}
