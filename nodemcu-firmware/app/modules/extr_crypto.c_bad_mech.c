
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*) ;

__attribute__((used)) static inline int bad_mech (lua_State *L) { return luaL_error (L, "unknown hash mech"); }
