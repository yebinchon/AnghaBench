
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lua_obs_callback {int dummy; } ;
typedef int lua_State ;


 struct lua_obs_callback* add_lua_obs_callback (int *,int) ;
 int is_function (int *,int) ;
 int ls_get_libobs_obj (int,int,int*) ;
 int modified_callback ;
 int obs_property_set_modified_callback2 (int,int ,struct lua_obs_callback*) ;
 int obs_property_t ;
 int p ;

__attribute__((used)) static int property_set_modified_callback(lua_State *script)
{
 obs_property_t *p;

 if (!ls_get_libobs_obj(obs_property_t, 1, &p))
  return 0;
 if (!is_function(script, 2))
  return 0;

 struct lua_obs_callback *cb = add_lua_obs_callback(script, 2);
 obs_property_set_modified_callback2(p, modified_callback, cb);
 return 0;
}
