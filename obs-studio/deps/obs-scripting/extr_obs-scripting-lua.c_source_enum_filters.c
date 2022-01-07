
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int ls_get_libobs_obj (int,int,int*) ;
 int lua_newtable (int *) ;
 int obs_source_enum_filters (int,int ,int *) ;
 int obs_source_t ;
 int source ;
 int source_enum_filters_proc ;

__attribute__((used)) static int source_enum_filters(lua_State *script)
{
 obs_source_t *source;
 if (!ls_get_libobs_obj(obs_source_t, 1, &source))
  return 0;

 lua_newtable(script);
 obs_source_enum_filters(source, source_enum_filters_proc, script);
 return 1;
}
