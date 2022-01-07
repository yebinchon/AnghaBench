
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int enum_sources_proc ;
 int lua_newtable (int *) ;
 int obs_enum_sources (int ,int *) ;

__attribute__((used)) static int enum_sources(lua_State *script)
{
 lua_newtable(script);
 obs_enum_sources(enum_sources_proc, script);
 return 1;
}
