
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int len; int start; } ;
typedef TYPE_1__ bstr ;


 char* luaL_checkstring (int *,int) ;
 int lua_pushlstring (int *,int ,int ) ;
 int lua_pushstring (int *,int ) ;
 int mp_basename (char const*) ;
 TYPE_1__ mp_dirname (char const*) ;

__attribute__((used)) static int script_split_path(lua_State *L)
{
    const char *p = luaL_checkstring(L, 1);
    bstr fname = mp_dirname(p);
    lua_pushlstring(L, fname.start, fname.len);
    lua_pushstring(L, mp_basename(p));
    return 2;
}
