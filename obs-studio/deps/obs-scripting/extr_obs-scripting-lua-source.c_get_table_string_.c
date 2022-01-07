
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* cstrcache_get (int ) ;
 int lua_gettable (int *,int) ;
 int lua_isstring (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int lua_tostring (int *,int) ;
 int warn (char*,char const*,char const*,char*) ;

__attribute__((used)) static inline const char *get_table_string_(lua_State *script, int idx,
         const char *name, const char *func)
{
 const char *str = "";

 lua_pushstring(script, name);
 lua_gettable(script, idx - 1);
 if (!lua_isstring(script, -1))
  warn("%s: no item '%s' of type %s", func, name, "string");
 else
  str = cstrcache_get(lua_tostring(script, -1));
 lua_pop(script, 1);

 return str;
}
