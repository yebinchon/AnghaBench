
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ lua_isnil (int *,int) ;
 scalar_t__ lua_isuserdata (int *,int) ;

__attribute__((used)) static int is_ptr(lua_State *script, int idx)
{
 return lua_isuserdata(script, idx) || lua_isnil(script, idx);
}
