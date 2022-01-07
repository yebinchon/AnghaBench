
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cronent_desc {int dummy; } ;
typedef int lua_State ;
struct TYPE_3__ {struct cronent_desc desc; void* cb_ref; } ;
typedef TYPE_1__ cronent_ud_t ;


 int LUA_REGISTRYINDEX ;
 int cronent_count ;
 void** cronent_list ;
 int lcron_parsedesc (int *,char*,struct cronent_desc*) ;
 int luaL_checkanyfunction (int *,int) ;
 scalar_t__ luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*) ;
 int luaL_getmetatable (int *,char*) ;
 void* luaL_ref (int *,int ) ;
 TYPE_1__* lua_newuserdata (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_setmetatable (int *,int) ;
 void* os_realloc (void**,int) ;

__attribute__((used)) static int lcron_create(lua_State *L) {

  char *strdesc = (char*)luaL_checkstring(L, 1);
  void *newlist;
  luaL_checkanyfunction(L, 2);

  struct cronent_desc desc;
  lcron_parsedesc(L, strdesc, &desc);

  cronent_ud_t *ud = lua_newuserdata(L, sizeof(cronent_ud_t));

  luaL_getmetatable(L, "cron.entry");
  lua_setmetatable(L, -2);

  lua_pushvalue(L, 2);
  ud->cb_ref = luaL_ref(L, LUA_REGISTRYINDEX);

  ud->desc = desc;

  newlist = os_realloc(cronent_list, sizeof(int) * (cronent_count + 1));
  if (newlist == ((void*)0)) {
    return luaL_error(L, "out of memory");
  }
  lua_pushvalue(L, -1);
  cronent_list = newlist;
  cronent_list[cronent_count++] = luaL_ref(L, LUA_REGISTRYINDEX);
  return 1;
}
