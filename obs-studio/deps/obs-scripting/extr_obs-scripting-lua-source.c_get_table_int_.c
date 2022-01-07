
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int UNUSED_PARAMETER (char const*) ;
 int lua_gettable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 scalar_t__ lua_tointeger (int *,int) ;

__attribute__((used)) static inline int get_table_int_(lua_State *script, int idx, const char *name,
     const char *func)
{
 int val = 0;

 lua_pushstring(script, name);
 lua_gettable(script, idx - 1);
 val = (int)lua_tointeger(script, -1);
 lua_pop(script, 1);

 UNUSED_PARAMETER(func);

 return val;
}
