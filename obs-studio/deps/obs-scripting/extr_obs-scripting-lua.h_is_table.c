
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_istable (int *,int) ;

__attribute__((used)) static int is_table(lua_State *script, int idx)
{
 return lua_istable(script, idx);
}
